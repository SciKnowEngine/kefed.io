package edu.isi.sciknowengine.kefed.io.v1.model;

import java.util.UUID;

public class KefedFieldTemplate {

	private String nameValue;

	private KefedFullValueTemplate valueType;

	private String uid;

	public KefedFullValueTemplate getValueType() {
		return valueType;
	}

	public void setValueType(KefedFullValueTemplate valueType) {
		this.valueType = valueType;
	}

	public String getNameValue() {
		return nameValue;
	}

	public void setNameValue(String nameValue) {
		this.nameValue = nameValue;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public void updateUID() {
		uid = UUID.randomUUID().toString();
	}
	
	
}
