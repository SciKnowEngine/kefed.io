package edu.isi.ske.kefed.io.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "dataobjectproperty", type = "dataobjectproperty", shards = 1, replicas = 0, refreshInterval = "-1")
public class MetaData {

	@Id
	String id;
	
	private String label;
	private String alternateTerm;
	private String definition;
	private String definitionSource;
	private String exampleUsage;
	private String parentclass;
	private String notes;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getAlternateTerm() {
		return alternateTerm;
	}
	public void setAlternateTerm(String alternateTerm) {
		this.alternateTerm = alternateTerm;
	}
	public String getDefinition() {
		return definition;
	}
	public void setDefinition(String definition) {
		this.definition = definition;
	}
	public String getDefinitionSource() {
		return definitionSource;
	}
	public void setDefinitionSource(String definitionSource) {
		this.definitionSource = definitionSource;
	}
	public String getExampleUsage() {
		return exampleUsage;
	}
	public void setExampleUsage(String exampleUsage) {
		this.exampleUsage = exampleUsage;
	}
	public String getParentclass() {
		return parentclass;
	}
	public void setParentclass(String parentclass) {
		this.parentclass = parentclass;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
	
}
