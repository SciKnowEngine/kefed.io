package edu.isi.ske.kefed.io.model;

import java.io.Serializable;
import java.net.URI;

import org.springframework.data.elasticsearch.annotations.Document;

@Document(indexName = "valuespecification", type = "valuespecification", shards = 1, replicas = 0, refreshInterval = "-1")
public class Value_Specification implements Serializable {
	static final long serialVersionUID = 5130904214704817886L;

	private String label;
	private URI ontologyId;
	private String unit_label;
	private URI units;
	private URI has_specified_value;
	private DataItem is_value_specification_of;
	private ProvenanceContext parameterizes;
	private StructuredObject_VS is_part_of;
	private ProvenanceContext has_provenance_context;

	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public URI getOntologyId() {
		return this.ontologyId;
	}

	public void setOntologyId(URI ontologyId) {
		this.ontologyId = ontologyId;
	}

	public String getUnit_label() {
		return this.unit_label;
	}

	public void setUnit_label(String unit_label) {
		this.unit_label = unit_label;
	}

	public URI getUnits() {
		return this.units;
	}

	public void setUnits(URI units) {
		this.units = units;
	}

	public URI getHas_specified_value() {
		return this.has_specified_value;
	}

	public void setHas_specified_value(URI has_specified_value) {
		this.has_specified_value = has_specified_value;
	}

	public DataItem getIs_value_specification_of() {
		return this.is_value_specification_of;
	}

	public void setIs_value_specification_of(DataItem is_value_specification_of) {
		this.is_value_specification_of = is_value_specification_of;
	}

	public ProvenanceContext getParameterizes() {
		return this.parameterizes;
	}

	public void setParameterizes(ProvenanceContext parameterizes) {
		this.parameterizes = parameterizes;
	}

	public StructuredObject_VS getIs_part_of() {
		return this.is_part_of;
	}

	public void setIs_part_of(StructuredObject_VS is_part_of) {
		this.is_part_of = is_part_of;
	}

	public ProvenanceContext getHas_provenance_context() {
		return this.has_provenance_context;
	}

	public void setHas_provenance_context(ProvenanceContext has_provenance_context) {
		this.has_provenance_context = has_provenance_context;
	}

}
