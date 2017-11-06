package edu.isi.sciknowengine.kefed.io.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "dataitem", type = "dataitem", shards = 1, replicas = 0, refreshInterval = "-1")
public class DataItem extends Continuant {
	static final long serialVersionUID = 5130904214704817886L;
	
	private String variable_type;
	private MaterialEntity parameterizes_entity;
	private List<Value_Specification> has_value_specification = new ArrayList<Value_Specification>();
	private PlannedProcess parameterizes;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getVariable_type() {
		return this.variable_type;
	}

	public void setVariable_type(String variable_type) {
		this.variable_type = variable_type;
	}

	public MaterialEntity getParameterizes_entity() {
		return this.parameterizes_entity;
	}

	public void setParameterizes_entity(MaterialEntity parameterizes_entity) {
		this.parameterizes_entity = parameterizes_entity;
	}

	public List<Value_Specification> getHas_value_specification() {
		return this.has_value_specification;
	}

	public void setHas_value_specification(List<Value_Specification> has_value_specification) {
		this.has_value_specification = has_value_specification;
	}

	public PlannedProcess getParameterizes() {
		return this.parameterizes;
	}

	public void setParameterizes(PlannedProcess parameterizes) {
		this.parameterizes = parameterizes;
	}
	

}
