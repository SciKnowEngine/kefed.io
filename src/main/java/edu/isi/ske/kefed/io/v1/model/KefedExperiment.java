package edu.isi.ske.kefed.io.v1.model;

import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.jgrapht.DirectedGraph;
import org.jgrapht.alg.DijkstraShortestPath;
import org.jgrapht.graph.DefaultDirectedGraph;
import org.jgrapht.graph.DefaultEdge;
import org.springframework.data.elasticsearch.annotations.Document;
import org.xml.sax.InputSource;

import edu.isi.ske.kefed.io.v1.JsonKefedModel;

@Document(indexName = "kefedexperiment", type = "kefedexperiment", shards = 1, replicas = 0, refreshInterval = "-1")
public class KefedExperiment extends JsonKefedModel {
			
	private Map<String,Map<String,String>> experimentData;

	public Map<String,Map<String,String>> getExperimentalData() {
		return experimentData;
	}

	public void setExperimentData(Map<String,Map<String,String>> experimentData) {
		this.experimentData = experimentData;
	}
	
	public KefedExperiment() {
		super();
		this.experimentData = new HashMap<String,Map<String,String>>();
	}
	

}
