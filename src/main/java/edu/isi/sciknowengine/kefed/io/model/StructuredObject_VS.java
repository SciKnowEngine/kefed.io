package edu.isi.sciknowengine.kefed.io.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "structuredobj", type = "structuredobj", shards = 1, replicas = 0, refreshInterval = "-1")
public class StructuredObject_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;

	private String type_label;
	private List<Value_Specification> has_part = new ArrayList<Value_Specification>();

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getType_label() {
		return this.type_label;
	}

	public void setType_label(String type_label) {
		this.type_label = type_label;
	}

	public List<Value_Specification> getHas_part() {
		return this.has_part;
	}

	public void setHas_part(List<Value_Specification> has_part) {
		this.has_part = has_part;
	}

}
