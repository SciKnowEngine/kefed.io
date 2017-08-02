package edu.isi.ske.kefed.io.model;

import java.io.Serializable;
import java.net.URI;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "studydesign", type = "studydesign", shards = 1, replicas = 0, refreshInterval = "-1")
public class Study_Design implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;
	
	@Id
	private String label;
	private URI ontologyId;
	private String process_type;
	private String diagramXML;
	private Experiment has_part;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public Experiment getHas_part() {
		return this.has_part;
	}

	public void setHas_part(Experiment has_part) {
		this.has_part = has_part;
	}

	public String getDiagramXML() {
		return diagramXML;
	}

	public void setDiagramXML(String diagramXML) {
		this.diagramXML = diagramXML;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public URI getOntologyId() {
		return ontologyId;
	}

	public void setOntologyId(URI ontologyId) {
		this.ontologyId = ontologyId;
	}

	public String getProcess_type() {
		return process_type;
	}

	public void setProcess_type(String process_type) {
		this.process_type = process_type;
	}

}
