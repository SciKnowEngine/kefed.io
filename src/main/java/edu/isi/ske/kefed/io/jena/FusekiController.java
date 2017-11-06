package edu.isi.ske.kefed.io.jena;

import java.util.Properties;

import org.apache.jena.fuseki.embedded.FusekiServer;
import org.apache.jena.ontology.OntModel;
import org.apache.jena.ontology.OntModelSpec;
import org.apache.jena.query.Dataset;
import org.apache.jena.query.DatasetAccessor;
import org.apache.jena.query.DatasetAccessorFactory;
import org.apache.jena.query.DatasetFactory;
import org.apache.jena.rdf.model.ModelFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * @author Gully
 */

@Controller
public class FusekiController {

	private Properties props;

	@Autowired
	private FusekiService fusekiService;

	@Autowired
	public FusekiController(Properties props) throws Exception {
		this.props = props;
		init();
	}

	public void init() throws Exception {

		Dataset ds = DatasetFactory.createTxnMem() ;
		FusekiServer server = FusekiServer.create()
			.setPort(3332)
		    .add("/ds", ds)
		    .build() ;
		server.start();
		
		OntModel ontModel = ModelFactory.createOntologyModel(OntModelSpec.OWL_MEM);
		String file = ClassLoader.class.getResource("/ontologies/obi.ttl").getFile();
		ontModel.read(file);

		//		http://pinesong.ghost.io/how-to-upload-rdf-file-to-jena-fuseki-server-using-java-code/
		String FUSEKI_SERVICE_DATASETS_URI = "http://localhost:3332/ds/data";
		DatasetAccessor accessor = DatasetAccessorFactory.createHTTP(FUSEKI_SERVICE_DATASETS_URI);
		if(accessor != null) {
		    accessor.add(ontModel);
		}
		
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/documents", method = RequestMethod.GET) public
	 * List<ConceptGraphView__Doc> searchDocuments(@RequestParam(value =
	 * "query") String query) { return documentService.search(query); }
	 */

	/*
	 * @RequestMapping("/readingList") public QueryResponse readingList(
	 * 
	 * @RequestParam(value = "query", defaultValue = "machine learning")
	 * List<String> queryTerms,
	 * 
	 * @RequestParam(value = "d", defaultValue = "3") Integer dnum,
	 * 
	 * @RequestParam(value = "t", defaultValue = "3") Integer tnum) throws
	 * Exception {
	 * 
	 * List<Integer> matchedTopics = new ArrayList<>(); queryTerms =
	 * queryTerms.stream().map(s -> s.replace(" ",
	 * "_")).collect(Collectors.toList()); for (String term : queryTerms) {
	 * matchedTopics.addAll(matcher.Getmatch(term)); } String queryString =
	 * queryTerms.stream().reduce((s, s2) -> s + ", " + s2).get();
	 * List<Document> documents = queryTerms.stream().flatMap(s ->
	 * generateBaselineDocuments(s).stream()) .collect(Collectors.toList());
	 * String result = newReadingList.Run(queryString, props.getTopicgraph(),
	 * tnum, dnum); QueryResponse response = mapToQueryResponse(queryString,
	 * result); response.addBaseLineDocuments(documents); return response; }
	 */

	/*
	 * @RequestMapping("/topic_terms") public Set<String> terms() { return
	 * topicTerms; }
	 */

}