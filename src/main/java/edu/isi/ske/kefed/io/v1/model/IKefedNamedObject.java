package edu.isi.ske.kefed.io.v1.model;

import java.util.List;

public interface IKefedNamedObject {
	
	public String getNameValue();
	
	public void setNameValue(String newName);
	
	public List<String> getOntoloygIds();
	
	// Do we want this to be set-able?
	// Perhaps we just need to be able to mutate the underlying Collection.
	public void setOntologyIds(List<String> newIds);

}
