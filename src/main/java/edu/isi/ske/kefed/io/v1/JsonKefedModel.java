package edu.isi.ske.kefed.io.v1;

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
import org.xml.sax.InputSource;

import edu.isi.ske.kefed.io.v1.model.KefedLink;
import edu.isi.ske.kefed.io.v1.model.KefedObject;

public class JsonKefedModel {
	
	private String id;
	private String kefedVersion;
	private String diagramXML;
	private String type;
	private String _type;
	private String source;
	private String modelName;
	private String _uid;
	private String description;
	private String dateTime;
		
	private List<KefedObject> nodes = new ArrayList<KefedObject>();
	private List<KefedLink> edges = new ArrayList<KefedLink>();
	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setKefedVersion(String kefedVersion) {
		this.kefedVersion = kefedVersion;
	}
	public String getKefedVersion() {
		return kefedVersion;
	}
	public void setDiagramXML(String diagramXML) {
		this.diagramXML = diagramXML;
	}
	public String getDiagramXML() {
		return diagramXML;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	public void setModelName(String modelName) {
		this.modelName = modelName;
	}
	public String getModelName() {
		return modelName;
	}
	public void setUid(String _uid) {
		this._uid = _uid;
	}
	public String getUid() {
		return _uid;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDescription() {
		return description;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getSource() {
		return source;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void set_type(String _type) {
		this._type = _type;
	}
	public String get_type() {
		return _type;
	}
	public void setNodes(List<KefedObject> nodes) {
		this.nodes = nodes;
	}
	public List<KefedObject> getNodes() {
		return nodes;
	}
	public void setEdges(List<KefedLink> edges) {
		this.edges = edges;
	}
	public List<KefedLink> getEdges() {
		return edges;
	}
	
	public List<KefedObject> getDependOnsForMeasurement(KefedObject ko) {
		
		String type = ko.getSpriteid();
		if( !type.equals("Dependent Variable Data") && 
				!type.equals("Measurement Specification")) {
			return null;
		}
		
		Map<KefedObject, Integer> localDep = new HashMap<KefedObject, Integer>();
		
	    DirectedGraph<KefedObject, DefaultEdge> g =
	            new DefaultDirectedGraph<KefedObject, DefaultEdge>(DefaultEdge.class);

	    HashMap<String, KefedObject> nLookup = new HashMap<String, KefedObject>();
		Iterator<KefedObject> nIt = this.getNodes().iterator(); 
	   	while(nIt.hasNext()) {
	   		KefedObject n = nIt.next();
	   		nLookup.put(n.getUid(), n);   			
	   	}
	   		
	    for( KefedLink l : this.getEdges()) {
	    	String sUid = l.getStart();
	    	String tUid = l.getEnd();
	    		
	    	KefedObject s = nLookup.get(sUid);
	    	KefedObject t = nLookup.get(tUid);
	    		    
	    	if( s == null ){
	    		System.err.println(this.getModelName() + ": uid=" + sUid + " is missing ");    			
	    		continue;
	    	}
	    		
	    	if( t == null ){
	    		System.err.println(this.getModelName() + ": uid=" + tUid + " is missing ");    			
	    		continue;
	    	}
	    		
	    	g.addVertex(s);
	        g.addVertex(t);
	        g.addEdge(s, t);
	       	
	    }
	    	
	    Set<KefedObject> pSet = new HashSet<KefedObject>();
	    for( KefedObject obj : this.getNodes()) {
	    	
			String type2 = obj.getSpriteid();

			if( type2.equals("Measurement Specification") || 
				type2.equals("Parameter Specification") ||
				type2.equals("Constant Specification")) {

				pSet.add(obj);

			} 
		}
	        
	    KefedObject in = null;
		KefedObject out = null;

		int inLength = 10000;
		int outLength = 10000;
		int maxPath = -1;

		for( KefedObject p : pSet ) {
			List outPath = DijkstraShortestPath.findPathBetween(g, p, ko);
			if( outPath != null ) {
				localDep.put(p, outPath.size());
				if( outPath.size() > maxPath )
					maxPath = outPath.size();
			}
		}

		List<KefedObject> deps = new ArrayList<KefedObject>();
		for(int i=maxPath; i>0; i--) {
			for( KefedObject p : localDep.keySet() ) {
				if(localDep.get(p) == i) {
					deps.add(p);
				}
			}
		}

		return deps;
		
	}
	
	public KefedModel2 convertToKefedModel() throws Exception {
		
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();

		KefedModel2 model = new KefedModel2();
		
		model.set_type(this._type);
		model.set_uid(this._uid);
		model.setDateTime(this.dateTime);
		model.setDescription(this.description);
		model.setDiagramXML(db.parse(new InputSource(new StringReader(this.diagramXML))));
		model.setId(this.id);
		model.setKefedVersion(this.kefedVersion);
		model.setModelName(this.modelName);
		model.setSource(source);
		model.setType(this.type);
				
		model.set_bEdges(this.edges);
		model.set_bNodes(this.nodes);
		
		return model;
		
	}
	

}
