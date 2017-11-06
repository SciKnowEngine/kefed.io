package edu.isi.sciknowengine.kefed.io.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.isi.sciknowengine.kefed.io.model.CurrentUser;
import edu.isi.sciknowengine.kefed.io.model.RegisterUser;
import edu.isi.sciknowengine.kefed.io.model.Study_Design;
import edu.isi.sciknowengine.kefed.io.repository.UserRepository;
import edu.isi.sciknowengine.kefed.io.service.GraphXMLService;
import edu.isi.sciknowengine.kefed.io.service.UserService;

@Controller
public class RestController implements UserDetailsService {

	@Autowired private UserService userService;
	@Autowired private GraphXMLService graphXMLService;
	
	@Autowired private UserRepository repositoryImpl;
		
	@RequestMapping(value="/login")
	public String register(HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@RequestBody RegisterUser user, HttpServletRequest request) {
		userService.saveNewUser(user);
		return "dashboard/app/index";
	}
	
	@RequestMapping("/kefedAdmin")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		return "dashboard/app/index";
	}
	
	//Old Save with JUST XML
	/*@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestBody String xml) throws Exception {
		graphXMLService.saveXML(xml);
		return "redirect:/kefedAdmin";
	}*/
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public @ResponseBody String Save(@RequestBody Study_Design templateObject) throws Exception {
		graphXMLService.saveTemplate(templateObject);
		return "redirect:/kefedAdmin";
	}
	
	@RequestMapping(value="/load",method=RequestMethod.GET)
	public String load(@RequestParam("id")String ontologyId,HttpServletRequest request) throws Exception {
		String xml = graphXMLService.findXMLById(ontologyId);
		String path = request.getServletContext().getRealPath("/");
	    File file = new File (path +"/kefed/xmlFile.xml");
		PrintWriter writer = new PrintWriter(file, "UTF-8");
		writer.print(xml);
		writer.close();
		return "ui/grapheditor/www/index";
	}
	
	@Override
    public CurrentUser loadUserByUsername(String username) throws UsernameNotFoundException {
    	if (repositoryImpl.exists(username)) {
            return new CurrentUser(repositoryImpl.findOne(username));
        }
        throw new UsernameNotFoundException(username);
    }
	
	@PostMapping(value="/getAll")
	public ResponseEntity<?> getAll() throws Exception {
		return ResponseEntity.ok(graphXMLService.getAll());
	}
	
	@PostMapping(value="/delete")
	public String delete(@RequestParam("id")String ontologyId,HttpServletRequest request) {
		graphXMLService.deleteTemplate(ontologyId);
		return "dashboard/app/index";
	}
	
	@RequestMapping(value="/getStudyDesign",method=RequestMethod.GET)
	public ResponseEntity<?> getStudyDesign(@RequestParam("id")String id,HttpServletRequest request) throws Exception {
		return ResponseEntity.ok(graphXMLService.getStudyDesign(id));
	}
	
}