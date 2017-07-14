package edu.isi.ske.kefed.io.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.isi.ske.kefed.io.model.CurrentUser;
import edu.isi.ske.kefed.io.model.RegisterUser;
import edu.isi.ske.kefed.io.repository.UserRepository;
import edu.isi.ske.kefed.io.service.UserService;

@Controller
public class RestController implements UserDetailsService {

	@Autowired private UserService userService;
	@Autowired private UserRepository repositoryImpl;


	@RequestMapping(value="/register")
	public String register(HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(@RequestBody RegisterUser user, HttpServletRequest request) {
		userService.saveNewUser(user);
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestParam("filename")String fileName, @RequestParam("xml")String xml) throws Exception {
		System.out.println(xml);
		return "index";
	}
	
	@RequestMapping(value="/open",method=RequestMethod.GET)
	public String open(){
		return "open";
	}


	@Override
    public CurrentUser loadUserByUsername(String username) throws UsernameNotFoundException {
    	if (repositoryImpl.exists(username)) {
            return new CurrentUser(repositoryImpl.findOne(username));
        }
        throw new UsernameNotFoundException(username);
    }
	

}