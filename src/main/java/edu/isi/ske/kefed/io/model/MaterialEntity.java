package edu.isi.ske.kefed.io.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "materialentity", type = "materialentity", shards = 1, replicas = 0, refreshInterval = "-1")
public class MaterialEntity extends Continuant {
	static final long serialVersionUID = 5130904214704817886L;

	
	private List<DataItem> is_parameterized_by = new ArrayList<DataItem>();

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public List<DataItem> getIs_parameterized_by() {
		return this.is_parameterized_by;
	}

	public void setIs_parameterized_by(List<DataItem> is_parameterized_by) {
		this.is_parameterized_by = is_parameterized_by;
	}

	

}
