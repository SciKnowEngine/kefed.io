package edu.isi.sciknowengine.kefed.io.v1.model;

import org.springframework.data.elasticsearch.annotations.Document;

import com.fasterxml.jackson.databind.JsonNode;

@Document(indexName = "kefedexperiment", type = "kefedexperiment", shards = 1, replicas = 0, refreshInterval = "-1")
public class KefedExperiment extends KefedModel {

	private String designUid = "";

	private JsonNode experimentData;
	private String experimentDataInES;

	public JsonNode getExperimentData() {
		return experimentData;
	}

	public void setExperimentData(JsonNode experimentData) {
		this.experimentData = experimentData;
	}
	
	public KefedExperiment() {
		super();;
	}

	public String getDesignUid() {
		return designUid;
	}

	public void setDesignUid(String designUid) {
		this.designUid = designUid;
	}

	public String getExperimentDataInES() {
		return experimentDataInES;
	}

	public void setExperimentDataInES(String experimentDataInES) {
		this.experimentDataInES = experimentDataInES;
	}

}
