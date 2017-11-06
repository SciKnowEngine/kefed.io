package edu.isi.sciknowengine.kefed.io.v1.model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class KefedFullValueTemplate {

	private String uid;
	private String valueTypeName;
	private List<String> allowedValues = new ArrayList<String>();
	private List<KefedFieldTemplate> multipleSlotFields = new ArrayList<KefedFieldTemplate>();

	public String getValueTypeName() {
		return valueTypeName;
	}

	public void setValueTypeName(String valueTypeName) {
		this.valueTypeName = valueTypeName;
	}

	public List<String> getAllowedValues() {
		return allowedValues;
	}

	public void setAllowedValues(List<String> allowedValues) {
		this.allowedValues = allowedValues;
	}

	public List<KefedFieldTemplate> getMultipleSlotFields() {
		return multipleSlotFields;
	}

	public void setMultipleSlotFields(List<KefedFieldTemplate> multipleSlotFields) {
		this.multipleSlotFields = multipleSlotFields;
	}

	public String updateUID() {
		String oldId = this.uid;
		this.uid = UUID.randomUUID().toString();
		for (KefedFieldTemplate f : this.multipleSlotFields) {
			f.updateUID();
		}
		return oldId;
	}

}
