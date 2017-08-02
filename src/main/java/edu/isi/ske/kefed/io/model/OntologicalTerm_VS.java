package edu.isi.ske.kefed.io.model;

import java.net.URI;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "otvs", type = "otvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class OntologicalTerm_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;

	private URI is_about;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public URI getIs_about() {
		return this.is_about;
	}

	public void setIs_about(URI is_about) {
		this.is_about = is_about;
	}

}
