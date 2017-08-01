package edu.isi.ske.kefed.io.model;

import java.util.ArrayList;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "templateobject", type = "templateobject", shards = 1, replicas = 0, refreshInterval = "-1")
public class TemplateObject {
	
	@Id
	String label;
	String xml;
	String processType;
	ArrayList<MaterialEntity> materialEntities;
	ArrayList<PlannedProcess> plannedPocesses;
	ArrayList<DataObject> dataObjects;
	
	
	
	public TemplateObject() {
		super();
	}
	
	
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getXml() {
		return xml;
	}
	public void setXml(String xml) {
		this.xml = xml;
	}
	public String getProcessType() {
		return processType;
	}
	public void setProcessType(String processType) {
		this.processType = processType;
	}
	public ArrayList<MaterialEntity> getMaterialEntities() {
		return materialEntities;
	}
	public void setMaterialEntities(ArrayList<MaterialEntity> materialEntities) {
		this.materialEntities = materialEntities;
	}
	public ArrayList<PlannedProcess> getPlannedPocesses() {
		return plannedPocesses;
	}
	public void setPlannedPocesses(ArrayList<PlannedProcess> plannedPocesses) {
		this.plannedPocesses = plannedPocesses;
	}
	public ArrayList<DataObject> getDataObjects() {
		return dataObjects;
	}


	public void setDataObjects(ArrayList<DataObject> dataObjects) {
		this.dataObjects = dataObjects;
	}


	
}
