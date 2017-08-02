
function DataItem() {
	Continuant.apply(this,arguments);
	this.variable_type = ''
	this.parameterizes_entity = null;
	this.has_value_specification = []
	this.parameterizes = null;
}

function NaturalLanguage_VS () {
	ValueSpecification.apply(this,arguments);
	this.language = ''
}

function StructuredObject_VS () {
	ValueSpecification.apply(this,arguments);
	this.type_label = ''
	this.has_part = []
}

function Continuant() {
	this.id="";
	this.label = arguments[0];
	this.ontologyId = arguments[1];
	this.is_specifed_input_of = []
	this.is_specified_output_of = [];
	this.participates_in=[];
}

function MaterialEntity() {
	Continuant.apply(this,arguments);
	this.is_parameterized_by = [];
}

function Investigation() {
	this.label = label;
	this.ontologyId = "";;
	this.realized_by = [];
	this.has_design = "";
}

function OntologicalTerm_VS () {
	ValueSpecification.apply(this,arguments);
	this.is_about = "";
}

function URI() {
	this.url = new URL()
}

function Experiment() {
	 return new (Function.prototype.bind.call(PlannedProcess,arguments));
	
}

function Scalar_VS() {
	ValueSpecification.apply(this,arguments);
	this.precision_code = ''
	this.max = 0.0
	this.min = 0.0
}

function ProvenanceContext() {
	this.is_parameterized_by = []
	this.is_provenance_context_for = new ValueSpecification()
}

function PlannedProcess() {
	this.label = '';
	this.process_type = '';
	this.ontologyId = "";
	this.has_first_part = null;
	this.has_specified_output = [];
	this.is_parameterized_by = [];
	this.has_part = [];
	this.has_participant = [];
	this.receives_input_from = [];
	this.has_specified_input = [];
	this.provides_input_to = [];
}

function Nominal_VS() {
	ValueSpecification.apply(this,arguments);
}

function Ordinal_VS(){
	ValueSpecification.apply(this,arguments);
	this.max_rank = 0
	this.rank_labels = []
}

function Study_Design_Execution(label,ontologyId) {
	this.label=label;
	this.ontologyId=ontologyId;
	this.has_part = new Experiment();
}

function ValueSpecification() {
	this.label = ''
	this.ontologyId = "";
	this.unit_label = ''
	this.units = "";
	this.has_specified_value = ""
	this.is_value_specification_of = new DataItem()
	this.parameterizes = new ProvenanceContext()
	this.is_part_of = new StructuredObject_VS()
	this.has_provenance_context = new ProvenanceContext()
}

function Categorical_VS() {
	Nominal_VS.apply(this,arguments);
	this.category_labels = []
}

function parseXML(xmlDoc,experiment) {
	
	this.dataObjects=[];
	this.materialEntities=[];
	this.plannedPocesses=[];
	this.connections=[];
	
	var x = xmlDoc.getElementsByTagName('mxCell');
	for (i = 0; i < x.length ;i++) {
		if(xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("style")!=null) {
			var style= xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("style");
			switch(style.split(";")[0]) {
				case "parameter":  console.log("parameter");
							  	   var parameter={
							  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
							  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
							  			type:"I"
							  	   };
							  	   this.dataObjects.push(parameter);
							       break;	  
							       
				case "measurement":console.log("measurement");
							  	   var parameter={
								  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			type:"D"
							  	   };
								   this.dataObjects.push(parameter);
								   break;
				 
							       
				case "process":    console.log("process");
					  			   var process= {
					  					 id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
					  					 value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
					  			   };
					  			   this.plannedPocesses.push(process);
					  			   break;
				  			   
				case "entity":     console.log("entity");
								   var materialEntity= {
						  			 id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
						  			 value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value")
								   };
						  		   this.materialEntities.push(materialEntity);
						  		   break;
				  				
				case "constant":   console.log("constant");
								   var parameter={
								  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			type:'C'
								   };
								   this.dataObjects.push(parameter);
								   break;
								   
				default:           console.log("connection");
								   var connnection = {
										source:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("source"),
								  		target:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("target")
								   };	
								   this.connections.push(connnection);
						           break;
			}
		}
	
	}
	
	for (var k=0; k<this.plannedPocesses.length;k++) {
		var processId=this.plannedPocesses[k].id;
		var processValue=this.plannedPocesses[k].value;
		var process= new (Function.prototype.bind.call(PlannedProcess,[processValue,""]));
		experiment.has_part.push(process);
		
		var connectionTarget = this.connections.filter(function(o){if((o.target == processId))return o;} );
		if(connectionTarget.length>0) {
			for(var i=0;i<connectionTarget.length;i++) {
					var connectionSourceId=connectionTarget[i].source;
					var materialEntity=this.materialEntities.filter(function(o){if(o.id == connectionSourceId)return o;})
					if(materialEntity.length>0) {
						var material= new (Function.prototype.bind.call(MaterialEntity,[materialEntity[0].value,""]));
						experiment.has_participant.push(material);
						process.has_specified_input.push(material);
						experiment.has_first_part=process;
					}
					var processEntity=this.plannedPocesses.filter(function(o){if(o.id == connectionSourceId)return o;})
					if(processEntity.length>0) {
						var id=processEntity[0].id;
						var parent = experiment.has_part.filter((function(o){if(o.id == id)return o;}));
						if(parent.length>0) {
							parent[0].provides_input_to.push(process);
							process.receives_input_from.push(parent[0]);
						}
					}
					
			}
		}
	}
	
	for (var k=0; k<this.materialEntities.length;k++) {
		var id=this.materialEntities[k].id;
		var remaining = experiment.has_participant.filter((function(o){if(o.id != id)return o;}));
		if(remaining.length>0) {
			for(var i=0;i<remaining.length;i++) {
				var valueMaterial=remaining[i].value;
				var material= new (Function.prototype.bind.call(MaterialEntity,[valueMaterial,""]));
				experiment.has_participant.push(material);
			}
		}
			
	}
	
	for (var k=0; k<this.dataObjects.length;k++) {
		var id=this.dataObjects[k].id;
		var connectionTarget = this.connections.filter(function(o){if((o.target == id))return o;} );
		var connectionSource = this.connections.filter(function(o){if((o.source == id))return o;} );
		if(connectionSource.length>0) {
			for(var i=0;i<connectionSource.length;i++) {
				var valueMaterial=connectionSource[i].target;
				var checkMaterialEntity = experiment.has_participant.filter((function(o){if(o.id == valueMaterial)return o;}));
				if(checkMaterialEntity.length>0) {
					for(var x=0;x<checkMaterialEntity.length;x++) {
						var dataItem = new (Function.prototype.bind.call(DataItem,["",""]));
						checkMaterialEntity[i].is_parameterized_by.push(dataItem);
					}
				}
				var checkPlannedProcess = experiment.has_part.filter((function(o){if(o.id == valueMaterial)return o;}));
				if(checkPlannedProcess.length>0) {
					for(var x=0;x<checkPlannedProcess.length;x++) {
						var dataItem = new (Function.prototype.bind.call(DataItem,["",""]));
						checkPlannedProcess[i].is_parameterized_by.push(dataItem);
					}
				}
			}
		}
	}
		
	
}

function Study_Design(xmlDoc,label,ontologyId,diagramXML) {
	
	this.label=label;
	this.ontologyId="";
	this.process_type="E";
	this.diagramXML=diagramXML;
	this.has_part = new Experiment();
	parseXML(xmlDoc,this.has_part);
}
