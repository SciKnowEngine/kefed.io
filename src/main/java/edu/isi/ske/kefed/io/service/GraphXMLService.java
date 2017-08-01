package edu.isi.ske.kefed.io.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import edu.isi.ske.kefed.io.model.TemplateObject;

@Repository
public interface GraphXMLService {
	void saveXML(String xml);

	String findXMLById(String ontologyId);

	ArrayList<String> getAll();

	void deleteTemplate(String ontologyId);

	void saveTemplate(TemplateObject templateObject);
}
