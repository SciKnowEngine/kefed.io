package edu.isi.ske.kefed.io.start;

import java.io.StringReader;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.xml.sax.InputSource;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestParam("filename")String fileName, @RequestParam("xml")String xml) throws Exception {
		System.out.println(xml);
		xml =  java.net.URLDecoder.decode(xml, "UTF-8");
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    InputSource is = new InputSource(new StringReader(xml));
	    System.out.println(builder.parse(is));
		return "index";
	}

}