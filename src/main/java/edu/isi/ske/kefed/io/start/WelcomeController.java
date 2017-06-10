package edu.isi.ske.kefed.io.start;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	//Just to Test
	
	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		model.put("message", this.message);
	
		return "redirect:" + request.getContextPath() + "www" + "/index.html";
	}

}