package edu.isi.ske.kefed.io.model;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "nmvs", type = "nmvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class Nominal_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;


	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

}
