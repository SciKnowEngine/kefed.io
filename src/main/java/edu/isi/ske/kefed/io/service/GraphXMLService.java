package edu.isi.ske.kefed.io.service;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public interface GraphXMLService {
	void saveXML(String xml);

	String findXMLById(String ontologyId);

	ArrayList<String> getAll();

	void deleteTemplate(String ontologyId);
}
