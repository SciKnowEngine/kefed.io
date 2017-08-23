package edu.isi.ske.kefed.io.v1;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;

import org.jgrapht.DirectedGraph;
import org.jgrapht.alg.DijkstraShortestPath;
import org.jgrapht.graph.DefaultDirectedGraph;
import org.jgrapht.graph.DefaultEdge;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import edu.isi.ske.kefed.io.v1.model.KefedFieldTemplate;
import edu.isi.ske.kefed.io.v1.model.KefedLink;
import edu.isi.ske.kefed.io.v1.model.KefedObject;

public class KefedJsonToVpdmfConverter {
	
	public static String USAGE = "arguments: <url or json-filePath> <output-filePath>"; 
	
	Logger log = Logger.getLogger("edu.isi.bmkeg.kefed.utils.KefedJsonToVpdmfConverter");

	private File dataDirectory;

	private String currSheet;
	private int sheetnum;
	private String currentExptName;
	
	private Map<String, Set<String>> measMap = new HashMap<String, Set<String>>();
	private Map<String, Set<String>> paramMap = new HashMap<String, Set<String>>();
	private Map<String, Set<String>> paramValueMap = new HashMap<String, Set<String>>();
	private Map<String, Set<String>> prMap = new HashMap<String,  Set<String>>();
	private Map<String, Set<String>> enMap = new HashMap<String, Set<String>>();

	private Map<String, Map<KefedObject, Map<KefedObject,Integer>>> depMatrix = new HashMap<String, Map<KefedObject,Map<KefedObject,Integer>>>();
	
	private List<JsonKefedModel> readJsonArrayFromFile(String path) throws Exception {

		File kefedFile = new File(path);
		BufferedReader in = new BufferedReader(new FileReader(kefedFile));
		
		StringBuilder sb = new StringBuilder();
	      		
		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			sb.append( inputLine + "\n" );
			//System.out.println(inputLine);
		}
		in.close();

		String kefedJson = sb.toString();

		List<JsonKefedModel> list = new ArrayList<JsonKefedModel>();
		
		Gson gson = new Gson();
		JsonParser parser = new JsonParser();
	    JsonArray array = parser.parse(kefedJson).getAsJsonArray();
	    Iterator<JsonElement> it = array.iterator();
	    while( it.hasNext() ) {
	    	JsonElement je = it.next();
	    	JsonKefedModel model = gson.fromJson(je, JsonKefedModel.class);
	    	list.add(model);
		}

	    return list;
		
	}
	
	private List<JsonKefedModel> readJsonArrayFromURL(String url) throws Exception {

		URL kefedUrl = new URL(url);
		URLConnection kefedConnx = kefedUrl.openConnection();
		BufferedReader in = new BufferedReader(new InputStreamReader(kefedConnx
				.getInputStream()));
		
		StringBuilder sb = new StringBuilder();
	      		
		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			sb.append( inputLine + "\n" );
			//System.out.println(inputLine);
		}
		in.close();

		String kefedJson = sb.toString();
		kefedJson = kefedJson.substring(4, kefedJson.length()-1);

		List<JsonKefedModel> list = new ArrayList<JsonKefedModel>();

		Gson gson = new Gson();
		JsonParser parser = new JsonParser();
	    JsonArray array = parser.parse(kefedJson).getAsJsonArray();
	    Iterator<JsonElement> it = array.iterator();
	    while( it.hasNext() ) {
	    	JsonElement je = it.next();
	    	JsonKefedModel model = gson.fromJson(je, JsonKefedModel.class);
	    	list.add(model);
		}

	    return list;
		
		
		
	}
	
	private JsonKefedModel readJsonFromFile(String path) throws Exception {

		File kefedFile = new File(path);
		BufferedReader in = new BufferedReader(new FileReader(kefedFile));
		
		StringBuilder sb = new StringBuilder();
	      		
		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			sb.append( inputLine + "\n" );
			//System.out.println(inputLine);
		}
		in.close();

		String kefedJson = sb.toString();

		JsonKefedModel model = new Gson().fromJson(kefedJson, JsonKefedModel.class);
		
		return model;
		
	}
	
	private JsonKefedModel readJsonFromURL(String url) throws Exception {

		URL kefedUrl = new URL(url);
		URLConnection kefedConnx = kefedUrl.openConnection();
		BufferedReader in = new BufferedReader(new InputStreamReader(kefedConnx
				.getInputStream()));
		
		StringBuilder sb = new StringBuilder();
	      		
		String inputLine;
		while ((inputLine = in.readLine()) != null) {
			sb.append( inputLine + "\n" );
			//System.out.println(inputLine);
		}
		in.close();

		String kefedJson = sb.toString();
		kefedJson = kefedJson.substring(1, kefedJson.length()-1);

		JsonKefedModel model = new Gson().fromJson(kefedJson, JsonKefedModel.class);
		
		return model;
		
	}
	
	
	private void buildReportFromJsonArray(List<JsonKefedModel> mList) throws Exception {
		
		Iterator<JsonKefedModel> mIt = mList.iterator();
		while( mIt.hasNext() ) {
			JsonKefedModel m = mIt.next();

			try {
				this.addDependenciesForModel(m);
			} catch(IllegalArgumentException e) {
				System.err.println("Error in structure of model:" + m.getModelName() + 
						". Excluding from report");
				continue;
			}

			Set<String> enSet = new HashSet<String>();
			Set<String> prSet = new HashSet<String>();
			Set<String> paramSet = new HashSet<String>();
			Set<String> measSet = new HashSet<String>();

			Set<String> paramValueSet = new HashSet<String>();
			
			Iterator<KefedObject> nIt = m.getNodes().iterator();
			while( nIt.hasNext() ) {
				KefedObject n = nIt.next();
				
				String type = n.getSpriteid();
				String s = clean(n.getNameValue());
				
				if( type.equals("Experimental Object") ) {
					
					enSet.add(s);
							
				} else if( type.equals("Activity") ) {
												
					prSet.add(s);					
				
				} else if( type.equals("Independent Variable Data") || 
						type.equals("Parameter Specification")  ) {
					
					paramSet.add(s);
					
					if( n.getValueType() != null ) {
						Iterator<String> vIt = n.getValueType().getAllowedValues().iterator();
						while(vIt.hasNext()) {
							String v = vIt.next();
							paramValueSet.add(s + "=" + v);
						}
										
						if( n.getValueType() != null && n.getValueType().getMultipleSlotFields().size() > 0  ) {
							Iterator<KefedFieldTemplate> fIt = n.getValueType().getMultipleSlotFields().iterator();
							while( fIt.hasNext() ) {
								KefedFieldTemplate f = fIt.next();
								paramSet.add(s + "." + clean(f.getNameValue()));							
								
								Iterator<String> v2It = f.getValueType().getAllowedValues().iterator();
								while(v2It.hasNext()) {
									String v2 = v2It.next();
									paramValueSet.add(s + "." + clean(f.getNameValue()) + "=" + v2);
								}
	
							}
	
						}
					}

				} else if( type.equals("Dependent Variable Data") || 
						type.equals("Measurement Specification")) {
					
					measSet.add(s);

				} else {
					
					int pause = 0;
					pause++;
				
				}

			}
			
			this.enMap.put(m.getModelName(), enSet);
			this.prMap.put(m.getModelName(), prSet);
			this.paramMap.put(m.getModelName(), paramSet);
			this.paramValueMap.put(m.getModelName(), paramValueSet);
			this.measMap.put(m.getModelName(), measSet);

		}
		
	}
	
	private void addDependenciesForModel(JsonKefedModel model) throws Exception {
		
		Map<KefedObject, Map<KefedObject, Integer>> localDep = new HashMap<KefedObject, Map<KefedObject, Integer>>();
		
		HashMap<String, String> nodeClass = new HashMap<String,String>();
		
        DirectedGraph<KefedObject, DefaultEdge> g =
            new DefaultDirectedGraph<KefedObject, DefaultEdge>(DefaultEdge.class);

        HashMap<String, KefedObject> nLookup = new HashMap<String, KefedObject>();
		Iterator<KefedObject> nIt = model.getNodes().iterator(); 
   		while(nIt.hasNext()) {
   			KefedObject n = nIt.next();
   			nLookup.put(n.getUid(), n);   			
   		}
   		
    	log.debug( "MODEL: " + model.getModelName() );
    	
   		Iterator<KefedLink> lIt = model.getEdges().iterator(); 
    	while(lIt.hasNext()) {
    		KefedLink l = lIt.next();
    		String sUid = l.getStart();
    		String tUid = l.getEnd();
    		
    		KefedObject s = nLookup.get(sUid);
    		KefedObject t = nLookup.get(tUid);
    		    
    		if( s == null ){
    			System.err.println(model.getModelName() + ": uid=" + sUid + " is missing ");    			
    			continue;
    		}
    		
    		if( t == null ){
    			System.err.println(model.getModelName() + ": uid=" + tUid + " is missing ");    			
    			continue;
    		}
    		
    		g.addVertex(s);
        	g.addVertex(t);
        	g.addEdge(s, t);
        	
        	log.debug( s.getNameValue() + "[" + s.getSpriteid() + "] --> " + t.getNameValue() + "[" + t.getSpriteid() + "]");
        	
    	}
    	
    	HashSet<KefedObject> mSet = new HashSet<KefedObject>();
        HashSet<KefedObject> pSet = new HashSet<KefedObject>();

        Iterator<KefedObject> it = model.getNodes().iterator();
		while (it.hasNext()) {
			KefedObject obj = it.next();

			String type = obj.getSpriteid();

			if( type.equals("Independent Variable Data") || 
				type.equals("Parameter Specification")  ) {

				pSet.add(obj);

			} else if( type.equals("Dependent Variable Data") || 
				type.equals("Measurement Specification")) {

				mSet.add(obj);

			}

		}
        
        Iterator<KefedObject> mIt = mSet.iterator();
		while (mIt.hasNext()) {
			KefedObject m = mIt.next();
			KefedObject in = null;
			KefedObject out = null;

			int inLength = 10000;
			int outLength = 10000;

			Map<KefedObject, Integer> mp = null;
			if( localDep.containsKey(m.getNameValue()) ) {
				mp = localDep.get(m);
			} else {
				mp = new HashMap<KefedObject, Integer>();				
			}
			
		    Iterator<KefedObject> pIt = pSet.iterator();
			while (pIt.hasNext()) {
				KefedObject p = pIt.next();
				
				List outPath = DijkstraShortestPath.findPathBetween(g, p, m);
				if( outPath != null ) {
					mp.put(p, outPath.size());										
				}
				
			}
			
			localDep.put(m, mp);
			
		}

		this.depMatrix.put(model.getModelName(), localDep);		
		
	}
	
	
	public Map<String, String> classifyActivities(KefedModel2 model) throws Exception {
		
		HashMap<String, String> nodeClass = new HashMap<String,String>();
		
        DirectedGraph<KefedObject, DefaultEdge> g =
            new DefaultDirectedGraph<KefedObject, DefaultEdge>(DefaultEdge.class);

        HashMap<String, KefedObject> nLookup = new HashMap<String, KefedObject>();
		Iterator<KefedObject> nIt = model.get_bNodes().iterator(); 
   		while(nIt.hasNext()) {
   			KefedObject n = nIt.next();
   			nLookup.put(n.getUid(), n);   			
   		}
   		
   		Iterator<KefedLink> lIt = model.get_bEdges().iterator(); 
    	while(lIt.hasNext()) {
    		KefedLink l = lIt.next();
    		String sUid = l.getStart();
    		String tUid = l.getEnd();
    		
    		KefedObject s = nLookup.get(sUid);
    		KefedObject t = nLookup.get(tUid);
    		
    		if( !s.getSpriteid().equals("Parameter Specification") && 
    				!t.getSpriteid().equals("Parameter Specification") ) {
    
    			g.addVertex(s);
        		g.addVertex(t);
        		g.addEdge(s, t);
        			
    		}
    		
    	}
    	
    	HashSet<KefedObject> activities = new HashSet<KefedObject>();
        HashSet<KefedObject> objects = new HashSet<KefedObject>();

        Iterator<KefedObject> it = model.get_bNodes().iterator();
		while (it.hasNext()) {
			KefedObject obj = it.next();

			String type = obj.getSpriteid();

			if (type.equals("Experimental Object")) {
				objects.add(obj);
			}
			else if (type.equals("Activity")) {
				activities.add(obj);
			}
			else if (type.equals("Measurement Specification")) {
				objects.add(obj);
			}

		}
        		
        Iterator<KefedObject> aIt = activities.iterator();
		while (aIt.hasNext()) {
			KefedObject a = aIt.next();
			KefedObject in = null;
			KefedObject out = null;

			int inLength = 10000;
			int outLength = 10000;
		
		    Iterator<KefedObject> oIt = objects.iterator();
			while (oIt.hasNext()) {
				KefedObject o = oIt.next();
				
				List inPath = DijkstraShortestPath.findPathBetween(g, o, a);
				if( inPath != null ) {
					int inPathLength = inPath.size();
					if( inPathLength < inLength ) {
						in = o;
						inLength = inPathLength; 
					}
				}
				
				List outPath = DijkstraShortestPath.findPathBetween(g, a, o);
				if( outPath != null ) {
					int outPathLength = outPath.size();
					if( outPathLength < outLength ) {
						out = o;
						outLength = outPathLength; 
					}
				}
				
			}
			
			if(in == null) 
				throw new Exception("Activity:" + a.getNameValue() + "has no input" );

			if( out == null) 
				throw new Exception("Activity:" + a.getNameValue() + "has no output" );
    	
			if( in.getSpriteid().equals("Experimental Object") && 
					out.getSpriteid().equals("Experimental Object") ) {
				
				nodeClass.put(a.getNameValue(), "KEfED_MaterialProcessing");
		
			} else if( in.getSpriteid().equals("Experimental Object") && 
					out.getSpriteid().equals("Measurement Specification") ) {

				nodeClass.put(a.getNameValue(), "KEfED_Assay");
			
			} else if( in.getSpriteid().equals("Measurement Specification") && 
					out.getSpriteid().equals("Measurement Specification") ) {

				nodeClass.put(a.getNameValue(), "KEfED_DataTransformation");
			
			} else {
				
				throw new Exception ("Activity:" + a.getNameValue() + " can't have information artifact as input and material entity as output");
		
			}
			
		}
    	
        return nodeClass;
		
	}
		
	
	private String clean(String s) {
		
		s = s.replaceAll("\\s+$", "");		
		s = s.replaceAll("\\s*\\(.*\\)\\s*$", "");			
		s = s.replaceAll("-\\s*\\d+\\s*$", "");		
		s = s.replaceAll("\\s+\\d+\\s*$", "");		
			
		return s;
		
	}
		
	public static void main1(String[] args) throws Exception {
		
		KefedJsonToVpdmfConverter jsonToVpdmf = new KefedJsonToVpdmfConverter();	
		
		if( args.length != 2) {
			System.err.println(USAGE);
			System.exit(-1);
		}
		
		if( args[0].startsWith("http") ) {
			
			File out = new File(args[1]);	
			
			if( out.exists() ) {
				System.err.println(out.getPath() + " exists, overwriting.");
				out.delete();
			}
			
			//jsonToVpdmf.generateOoevvReport(args[0], out);
	
		} else {
			File in = new File(args[0]);	
			File out = new File(args[1]);	

			if( out.exists() ) {
				System.err.println(out.getPath() + " exists, overwriting.");
				out.delete();
			}

			//jsonToVpdmf.generateOoevvReport(in, out);
		}		

	}
	
}
