package edu.isi.ske.kefed.io.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "graphxml", type = "graphxml", shards = 1, replicas = 0, refreshInterval = "-1")
public class GraphXML {

	
	
	@Id
    private String filename;

    private String xml;
   
    public GraphXML() {
    }

    
	public GraphXML(String filename, String xml) {
		super();
		this.filename = filename;
		this.xml = xml;
	}


	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getXml() {
		return xml;
	}

	public void setXml(String xml) {
		this.xml = xml;
	}
    
       
}