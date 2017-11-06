package edu.isi.sciknowengine.kefed.io.v1;

import java.util.ArrayList;
import java.util.List;

import org.w3c.dom.Document;

import edu.isi.sciknowengine.kefed.io.v1.model.KefedLink;
import edu.isi.sciknowengine.kefed.io.v1.model.KefedObject;

public class KefedModel2 {
	
	private String id;
	private String kefedVersion;
	private Document diagramXML;
	private String type;
	private String _type;
	private String source;
	private String modelName;
	private String _uid;
	private String description;
	private String dateTime;
	
	private List<KefedObject> _bNodes = new ArrayList<KefedObject>();
	private List<KefedLink> _bEdges = new ArrayList<KefedLink>();
	
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
	public void setDiagramXML(Document diagramXML) {
		this.diagramXML = diagramXML;
	}
	public Document getDiagramXML() {
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
	public void set_uid(String _uid) {
		this._uid = _uid;
	}
	public String get_uid() {
		return _uid;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDescription() {
		return description;
	}
	public void set_bEdges(List<KefedLink> _bEdges) {
		this._bEdges = _bEdges;
	}
	public List<KefedLink> get_bEdges() {
		return _bEdges;
	}
	public void set_bNodes(List<KefedObject> _bNodes) {
		this._bNodes = _bNodes;
	}
	public List<KefedObject> get_bNodes() {
		return _bNodes;
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
	

}
