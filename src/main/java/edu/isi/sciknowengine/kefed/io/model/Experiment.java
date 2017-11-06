package edu.isi.sciknowengine.kefed.io.model;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "experiment", type = "experiment", shards = 1, replicas = 0, refreshInterval = "-1")
public class Experiment extends PlannedProcess {
	static final long serialVersionUID = 5130904214704817886L;


	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

}
