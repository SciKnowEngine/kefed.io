package edu.isi.ske.kefed.io.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RestController {

	@RequestMapping("/")
	public String welcome(Map<String, Object> model, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String Save(@RequestParam("filename")String fileName, @RequestParam("xml")String xml) throws Exception {
		System.out.println(xml);
		/*xml =  java.net.URLDecoder.decode(xml, "UTF-8");
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder builder = factory.newDocumentBuilder();
	    InputSource is = new InputSource(new StringReader(xml));
	    System.out.println(builder.parse(is));
		*/return "index";
	}
	
	@RequestMapping(value="/open",method=RequestMethod.GET)
	public String open(){
		return "open";
	}

}