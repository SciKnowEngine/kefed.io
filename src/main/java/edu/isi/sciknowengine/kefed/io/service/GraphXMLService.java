package edu.isi.sciknowengine.kefed.io.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import edu.isi.sciknowengine.kefed.io.model.Study_Design;

@Repository
public interface GraphXMLService {
	
	String findXMLById(String ontologyId);

	ArrayList<String> getAll();

	void deleteTemplate(String ontologyId);

	void saveTemplate(Study_Design templateObject);

	Study_Design getStudyDesign(String id);
	
}
