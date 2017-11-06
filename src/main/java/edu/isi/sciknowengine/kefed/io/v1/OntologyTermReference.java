package edu.isi.sciknowengine.kefed.io.v1;

public class OntologyTermReference {

	private String ontology;
	private String ontologyIdentifier;
	private String ontologyLocalName;
	private String _type;
	private String description;
	private String termURL;
	
	public void setOntology(String ontology) {
		this.ontology = ontology;
	}
	public String getOntology() {
		return ontology;
	}
	public void setOntologyIdentifier(String ontologyIdentifier) {
		this.ontologyIdentifier = ontologyIdentifier;
	}
	public String getOntologyIdentifier() {
		return ontologyIdentifier;
	}
	public void setOntologyLocalName(String ontologyLocalName) {
		this.ontologyLocalName = ontologyLocalName;
	}
	public String getOntologyLocalName() {
		return ontologyLocalName;
	}
	public void set_type(String _type) {
		this._type = _type;
	}
	public String get_type() {
		return _type;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDescription() {
		return description;
	}
	public void setTermURL(String termURL) {
		this.termURL = termURL;
	}
	public String getTermURL() {
		return termURL;
	}
	
	
}
