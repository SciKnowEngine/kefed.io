package edu.isi.sciknowengine.kefed.io.model;

import java.io.Serializable;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "sdesignexecution", type = "sdesignexecution", shards = 1, replicas = 0, refreshInterval = "-1")
public class Study_Design_Execution implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private Experiment has_part;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public Experiment getHas_part() {
		return this.has_part;
	}

	public void setHas_part(Experiment has_part) {
		this.has_part = has_part;
	}

}
