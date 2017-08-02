package edu.isi.ske.kefed.io.model;

import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "continuant", type = "continuant", shards = 1, replicas = 0, refreshInterval = "-1")
public class Continuant implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private String label;
	private URI ontologyId;
	private List<PlannedProcess> participatesIn = new ArrayList<PlannedProcess>();
	private List<PlannedProcess> is_specifed_input_of = new ArrayList<PlannedProcess>();
	private List<PlannedProcess> is_specified_output_of = new ArrayList<PlannedProcess>();

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public URI getOntologyId() {
		return this.ontologyId;
	}

	public void setOntologyId(URI ontologyId) {
		this.ontologyId = ontologyId;
	}

	public List<PlannedProcess> getParticipatesIn() {
		return this.participatesIn;
	}

	public void setParticipatesIn(List<PlannedProcess> participatesIn) {
		this.participatesIn = participatesIn;
	}

	public List<PlannedProcess> getIs_specifed_input_of() {
		return this.is_specifed_input_of;
	}

	public void setIs_specifed_input_of(List<PlannedProcess> is_specifed_input_of) {
		this.is_specifed_input_of = is_specifed_input_of;
	}

	public List<PlannedProcess> getIs_specified_output_of() {
		return this.is_specified_output_of;
	}

	public void setIs_specified_output_of(List<PlannedProcess> is_specified_output_of) {
		this.is_specified_output_of = is_specified_output_of;
	}

}
