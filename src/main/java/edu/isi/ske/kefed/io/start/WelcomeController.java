package edu.isi.ske.kefed.io.start;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WelcomeController {

	@Value("${welcome.message:test}")
	private String message = "Hello World";
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		model.put("message", this.message);
	
		return "index";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestParam("filename")String fileName, @RequestParam("xml")String xml) {
		System.out.println(xml);
		return "index";
	}

}