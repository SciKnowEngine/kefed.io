package edu.isi.sciknowengine.kefed.io.v1.model;

import java.util.List;
import java.util.UUID;

public class KefedObject {

	private String type;
	private String notes;
	private int pos;
	private String spriteid;
	private String valueDomain;
	private String did;
	private String nameValue;
	private List<String> ontologyIds;
	private String uid;
	private int compositions;
	private String master;
	private int xx;
	private int yy;
	private int ww;
	private int hh;
	private KefedFullValueTemplate valueType;

	public void setType(String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setPos(int pos) {
		this.pos = pos;
	}

	public int getPos() {
		return pos;
	}

	public void setSpriteid(String spriteid) {
		this.spriteid = spriteid;
	}

	public String getSpriteid() {
		return spriteid;
	}

	public void setValueDomain(String valueDomain) {
		this.valueDomain = valueDomain;
	}

	public String getValueDomain() {
		return valueDomain;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getDid() {
		return did;
	}

	public void setNameValue(String nameValue) {
		this.nameValue = nameValue;
	}

	public String getNameValue() {
		return nameValue;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUid() {
		return uid;
	}

	public void setCompositions(int compositions) {
		this.compositions = compositions;
	}

	public int getCompositions() {
		return compositions;
	}

	public void setMaster(String master) {
		this.master = master;
	}

	public String getMaster() {
		return master;
	}

	public void setXx(int xx) {
		this.xx = xx;
	}

	public int getXx() {
		return xx;
	}

	public void setYy(int yy) {
		this.yy = yy;
	}

	public int getYy() {
		return yy;
	}

	public void setWw(int ww) {
		this.ww = ww;
	}

	public int getWw() {
		return ww;
	}

	public void setHh(int hh) {
		this.hh = hh;
	}

	public int getHh() {
		return hh;
	}

	public void setOntologyIds(List<String> ontologyIds) {
		this.ontologyIds = ontologyIds;
	}

	public List<String> getOntologyIds() {
		return ontologyIds;
	}

	public KefedFullValueTemplate getValueType() {
		return valueType;
	}

	public void setValueType(KefedFullValueTemplate valueType) {
		this.valueType = valueType;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String updateUID() {
		String oldUID = this.uid;
		uid = UUID.randomUUID().toString();
		valueType.updateUID();
		return oldUID;
	}

}
