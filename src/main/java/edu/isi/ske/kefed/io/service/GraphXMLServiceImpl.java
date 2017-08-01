package edu.isi.ske.kefed.io.service;

import java.util.ArrayList;
import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import edu.isi.ske.kefed.io.model.GraphXML;
import edu.isi.ske.kefed.io.model.TemplateObject;
import edu.isi.ske.kefed.io.repository.GraphTemplateRepository;
import edu.isi.ske.kefed.io.repository.GraphXMLRepository;

@Component
public class GraphXMLServiceImpl implements GraphXMLService{

	@Autowired private GraphXMLRepository repositoryImpl;
	@Autowired private GraphTemplateRepository graphTemplateRepository ;


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
	public String findXMLById(String ontologyId) {
		TemplateObject graphXML = graphTemplateRepository.findOne(ontologyId);
		if(null!=graphXML) return graphXML.getXml();
		return "";
	}

	@Override
	@Transactional
	public ArrayList<String> getAll() {
		ArrayList<String> templates = new ArrayList<String>();
		
		Iterator<TemplateObject> arrayList = graphTemplateRepository.findAll().iterator();
		while(arrayList.hasNext()) templates.add(arrayList.next().getLabel());
		
		return templates;
	}

	@Override
	@Transactional
	public void deleteTemplate(String ontologyId) {
		GraphXML graphXML = repositoryImpl.findOne(ontologyId);
		if(null!=graphXML) repositoryImpl.delete(graphXML);
	}

	@Override
	@Transactional
	public void saveTemplate(TemplateObject templateObject) {
		graphTemplateRepository.save(templateObject);
		
	}
	
}
