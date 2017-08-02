package edu.isi.ske.kefed.io.model;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "scalarvs", type = "scalarvs", shards = 1, replicas = 0, refreshInterval = "-1")
public class Scalar_VS extends Value_Specification {
	static final long serialVersionUID = 5130904214704817886L;

	private String precision_code;
	private float max;
	private float min;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getPrecision_code() {
		return this.precision_code;
	}

	public void setPrecision_code(String precision_code) {
		this.precision_code = precision_code;
	}

	public float getMax() {
		return this.max;
	}

	public void setMax(float max) {
		this.max = max;
	}

	public float getMin() {
		return this.min;
	}

	public void setMin(float min) {
		this.min = min;
	}

}
