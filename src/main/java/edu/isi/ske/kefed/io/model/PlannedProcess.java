package edu.isi.ske.kefed.io.model;

import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonSubTypes.Type;

@Document(indexName = "plannedprocess", type = "plannedprocess", shards = 1, replicas = 0, refreshInterval = "-1")
public class PlannedProcess implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	@Id
	private int id;
	private String label;
	private String process_type;
	private URI ontologyId;
	private PlannedProcess has_first_part;
	private List<DataItem> has_specified_output = new ArrayList<DataItem>();
	private PlannedProcess is_part_of;
	private List<DataItem> is_parameterized_by = new ArrayList<DataItem>();
	private List<PlannedProcess> has_part = new ArrayList<PlannedProcess>();
	
	@JsonSubTypes({ 
	  @Type(value = MaterialEntity.class), 
	  @Type(value = DataItem.class) 
	})
	private List<? extends Continuant> has_participant = new ArrayList<>();
	
	private List<PlannedProcess> receives_input_from = new ArrayList<PlannedProcess>();
	private List<MaterialEntity> has_specified_input = new ArrayList<MaterialEntity>();
	private List<PlannedProcess> provides_input_to = new ArrayList<PlannedProcess>();
	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public String getProcess_type() {
		return process_type;
	}
	public void setProcess_type(String process_type) {
		this.process_type = process_type;
	}
	public URI getOntologyId() {
		return ontologyId;
	}
	public void setOntologyId(URI ontologyId) {
		this.ontologyId = ontologyId;
	}
	public PlannedProcess getHas_first_part() {
		return has_first_part;
	}
	public void setHas_first_part(PlannedProcess has_first_part) {
		this.has_first_part = has_first_part;
	}
	
	public List<DataItem> getHas_specified_output() {
		return has_specified_output;
	}
	public void setHas_specified_output(List<DataItem> has_specified_output) {
		this.has_specified_output = has_specified_output;
	}
	public PlannedProcess getIs_part_of() {
		return is_part_of;
	}
	public void setIs_part_of(PlannedProcess is_part_of) {
		this.is_part_of = is_part_of;
	}
	public List<DataItem> getIs_parameterized_by() {
		return is_parameterized_by;
	}
	public void setIs_parameterized_by(List<DataItem> is_parameterized_by) {
		this.is_parameterized_by = is_parameterized_by;
	}
	public List<PlannedProcess> getHas_part() {
		return has_part;
	}
	public void setHas_part(List<PlannedProcess> has_part) {
		this.has_part = has_part;
	}
	
	public List<? extends Object> getHas_participant() {
		return has_participant;
	}
	public void setHas_participant(List<? extends Continuant> has_participant) {
		this.has_participant = has_participant;
	}
	public List<PlannedProcess> getReceives_input_from() {
		return receives_input_from;
	}
	public void setReceives_input_from(List<PlannedProcess> receives_input_from) {
		this.receives_input_from = receives_input_from;
	}
	public List<MaterialEntity> getHas_specified_input() {
		return has_specified_input;
	}
	public void setHas_specified_input(List<MaterialEntity> has_specified_input) {
		this.has_specified_input = has_specified_input;
	}
	public List<PlannedProcess> getProvides_input_to() {
		return provides_input_to;
	}
	public void setProvides_input_to(List<PlannedProcess> provides_input_to) {
		this.provides_input_to = provides_input_to;
	}
	
}
