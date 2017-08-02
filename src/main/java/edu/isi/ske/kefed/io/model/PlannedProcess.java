package edu.isi.ske.kefed.io.model;

import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "plannedprocess", type = "plannedprocess", shards = 1, replicas = 0, refreshInterval = "-1")
public class PlannedProcess implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private String label;
	private String process_type;
	private URI ontologyId;
	private PlannedProcess has_first_part;
	private List<Continuant> has_specified_output = new ArrayList<Continuant>();
	private PlannedProcess is_part_of;
	private List<DataItem> is_parameterized_by = new ArrayList<DataItem>();
	private List<PlannedProcess> has_part = new ArrayList<PlannedProcess>();
	private List<Continuant> has_participant = new ArrayList<Continuant>();
	private List<PlannedProcess> receives_input_from = new ArrayList<PlannedProcess>();
	private List<Continuant> has_specified_input = new ArrayList<Continuant>();
	private List<PlannedProcess> provides_input_to = new ArrayList<PlannedProcess>();

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getProcess_type() {
		return this.process_type;
	}

	public void setProcess_type(String process_type) {
		this.process_type = process_type;
	}

	public URI getOntologyId() {
		return this.ontologyId;
	}

	public void setOntologyId(URI ontologyId) {
		this.ontologyId = ontologyId;
	}

	public PlannedProcess getHas_first_part() {
		return this.has_first_part;
	}

	public void setHas_first_part(PlannedProcess has_first_part) {
		this.has_first_part = has_first_part;
	}

	public List<Continuant> getHas_specified_output() {
		return this.has_specified_output;
	}

	public void setHas_specified_output(List<Continuant> has_specified_output) {
		this.has_specified_output = has_specified_output;
	}

	public PlannedProcess getIs_part_of() {
		return this.is_part_of;
	}

	public void setIs_part_of(PlannedProcess is_part_of) {
		this.is_part_of = is_part_of;
	}

	public List<DataItem> getIs_parameterized_by() {
		return this.is_parameterized_by;
	}

	public void setIs_parameterized_by(List<DataItem> is_parameterized_by) {
		this.is_parameterized_by = is_parameterized_by;
	}

	public List<PlannedProcess> getHas_part() {
		return this.has_part;
	}

	public void setHas_part(List<PlannedProcess> has_part) {
		this.has_part = has_part;
	}

	public List<Continuant> getHas_participant() {
		return this.has_participant;
	}

	public void setHas_participant(List<Continuant> has_participant) {
		this.has_participant = has_participant;
	}

	public List<PlannedProcess> getReceives_input_from() {
		return this.receives_input_from;
	}

	public void setReceives_input_from(List<PlannedProcess> receives_input_from) {
		this.receives_input_from = receives_input_from;
	}

	public List<Continuant> getHas_specified_input() {
		return this.has_specified_input;
	}

	public void setHas_specified_input(List<Continuant> has_specified_input) {
		this.has_specified_input = has_specified_input;
	}

	public List<PlannedProcess> getProvides_input_to() {
		return this.provides_input_to;
	}

	public void setProvides_input_to(List<PlannedProcess> provides_input_to) {
		this.provides_input_to = provides_input_to;
	}

}
