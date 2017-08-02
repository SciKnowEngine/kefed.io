package edu.isi.ske.kefed.io.model;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "nlvs", type = "nlvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class NaturalLanguage_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;

	private String language;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}
