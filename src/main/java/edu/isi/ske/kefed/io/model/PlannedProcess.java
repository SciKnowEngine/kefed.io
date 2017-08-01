package edu.isi.ske.kefed.io.model;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "plannedprocess", type = "plannedprocess", shards = 1, replicas = 0, refreshInterval = "-1")
public class PlannedProcess {
	@Id
	String id;
	String label;
	String processType;
	String ontologyId;
	ArrayList<DataObject> dataObjectParameters;
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
	public String getProcessType() {
		return processType;
	}
	public void setProcessType(String processType) {
		this.processType = processType;
	}
	public String getOntologyId() {
		return ontologyId;
	}
	public void setOntologyId(String ontologyId) {
		this.ontologyId = ontologyId;
	}
	public ArrayList<DataObject> getDataObjectParameters() {
		return dataObjectParameters;
	}
	public void setDataObjectParameters(ArrayList<DataObject> dataObjectParameters) {
		this.dataObjectParameters = dataObjectParameters;
	}

}
