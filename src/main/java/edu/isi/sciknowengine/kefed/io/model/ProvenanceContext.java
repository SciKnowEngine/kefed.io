package edu.isi.sciknowengine.kefed.io.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "provenancecontext", type = "provenancecontext", shards = 1, replicas = 0, refreshInterval = "-1")
public class ProvenanceContext implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private List<Value_Specification> is_parameterized_by = new ArrayList<Value_Specification>();
	private Value_Specification is_provenance_context_for;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public List<Value_Specification> getIs_parameterized_by() {
		return this.is_parameterized_by;
	}

	public void setIs_parameterized_by(List<Value_Specification> is_parameterized_by) {
		this.is_parameterized_by = is_parameterized_by;
	}

	public Value_Specification getIs_provenance_context_for() {
		return this.is_provenance_context_for;
	}

	public void setIs_provenance_context_for(Value_Specification is_provenance_context_for) {
		this.is_provenance_context_for = is_provenance_context_for;
	}

}
