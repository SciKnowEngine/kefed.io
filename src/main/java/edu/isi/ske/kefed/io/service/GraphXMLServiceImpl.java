package edu.isi.ske.kefed.io.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.ske.kefed.io.model.GraphXML;
import edu.isi.ske.kefed.io.repository.GraphXMLRepository;

@Component
public class GraphXMLServiceImpl implements GraphXMLService{

	@Autowired private GraphXMLRepository repositoryImpl;

	@Override
	@Transactional
	public void saveXML(String xml) {
		
		String[] xmlString = xml.split("#");
		StringBuffer buffer = new StringBuffer();
		int i=3;
		while(i<=xmlString.length-1) { buffer = buffer.append(xmlString[i]);i++;};
		repositoryImpl.save(new GraphXML(xmlString[1],buffer.toString()));
		
	}

	@Override
	@Transactional
	public String findXMLById(int ontologyId) {
		
		Iterable<GraphXML> graphXMLs = repositoryImpl.findAll();
		if(graphXMLs.iterator().hasNext()) return graphXMLs.iterator().next().getXml();
		return "";
	}

	@Override
	public ArrayList<String> getAll() {
		Iterable<GraphXML> arrayList = new ArrayList<GraphXML>();
		ArrayList<String> templates = new ArrayList<String>();
		
		arrayList = repositoryImpl.findAll();
		for(GraphXML xml:arrayList) templates.add(xml.getFilename());
		
		return templates;
	}
	
}
