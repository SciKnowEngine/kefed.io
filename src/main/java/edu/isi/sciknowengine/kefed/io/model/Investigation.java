package edu.isi.sciknowengine.kefed.io.model;

import java.io.Serializable;
import java.net.URI;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "investigation", type = "investigation", shards = 1, replicas = 0, refreshInterval = "-1")
public class Investigation implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private String label;
	private URI ontologyId;
	private Study_Design has_design;

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

	/*public List<Study_Design_Execution> getRealized_by() {
		return this.realized_by;
	}

	public void setRealized_by(List<Study_Design_Execution> realized_by) {
		this.realized_by = realized_by;
	}
*/
	public Study_Design getHas_design() {
		return this.has_design;
	}

	public void setHas_design(Study_Design has_design) {
		this.has_design = has_design;
	}

}
