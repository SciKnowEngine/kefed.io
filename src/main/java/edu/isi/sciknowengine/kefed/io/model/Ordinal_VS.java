package edu.isi.sciknowengine.kefed.io.model;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "orvs", type = "orvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class Ordinal_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;

	private int max_rank;
	private List<String> rank_labels = new ArrayList<String>();

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public int getMax_rank() {
		return this.max_rank;
	}

	public void setMax_rank(int max_rank) {
		this.max_rank = max_rank;
	}

	public List<String> getRank_labels() {
		return this.rank_labels;
	}

	public void setRank_labels(List<String> rank_labels) {
		this.rank_labels = rank_labels;
	}

}
