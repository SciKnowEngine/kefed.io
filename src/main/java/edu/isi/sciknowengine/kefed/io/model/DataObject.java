package edu.isi.sciknowengine.kefed.io.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "dataobject", type = "dataobject", shards = 1, replicas = 0, refreshInterval = "-1")
public class DataObject {
	
	@Id
	String id;
	String label;
	String variableType;
	String ontologyId;
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
	public String getVariableType() {
		return variableType;
	}
	public void setVariableType(String variableType) {
		this.variableType = variableType;
	}
	public String getOntologyId() {
		return ontologyId;
	}
	public void setOntologyId(String ontologyId) {
		this.ontologyId = ontologyId;
	}
	
}
