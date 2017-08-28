
function DataItem(id,label,variableType,ontologyId,material,process) {
	Continuant.apply(this,[id,label,ontologyId]);
	this.variable_type = variableType==undefined?"":variableType;
	this.parameterizes_entity = material;
	this.has_value_specification = []
	this.parameterizes = process;
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

function Continuant(id,label,ontologyId) {
	this.id=parseInt(id);
	this.label = label;
	this.metaData=null;
	this.ontologyId = ontologyId;
	this.is_specifed_input_of = []
	this.is_specified_output_of = [];
	this.participates_in=[];
}

function MaterialEntity(id,label,ontologyId) {
	Continuant.apply(this,[id,label,ontologyId]);
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
	PlannedProcess.apply(this,arguments);
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

function PlannedProcess(label,id,processtype,ontologyId) {
	this.id = id!=undefined?parseInt(id):0;
	this.label = label;
	this.metaData=null;
	this.process_type = processtype;
	this.ontologyId = ontologyId;
	this.has_first_part = new Object();
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
	this.label = '';
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
							  			variableType:"I"
							  	   };
							  	   this.dataObjects.push(parameter);
							       break;	  
							       
				case "measurement":console.log("measurement");
							  	   var parameter={
								  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			variableType:"D"
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
								  			variableType:'C'
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
		var process= new (Function.prototype.bind.call(PlannedProcess,0,processValue,processId,"M",""));
		var parent = experiment.has_part.filter((function(o){if(o.id == processId)return o;}));
		if(parent.length==0) {
			experiment.has_part.push(process);
		} else parent[0].label=processValue;
		
		
		var connectionTarget = this.connections.filter(function(o){if((o.target == processId))return o;} );
		if(connectionTarget.length>0) {
			for(var i=0;i<connectionTarget.length;i++) {
					var connectionSourceId=connectionTarget[i].source;
					var connectionTargetId=connectionTarget[i].target;
					var materialEntity=this.materialEntities.filter(function(o){if(o.id == connectionSourceId)return o;})
					if(materialEntity.length>0) {
						var id=materialEntity[0].id;
						var value=materialEntity[0].value;
						var material= new (Function.prototype.bind.call(MaterialEntity,0,id,value,""));
						var parent = experiment.has_participant.filter((function(o){if(o.id == id)return o;}));
						if(parent.length==0) {
							experiment.has_participant.push(material);
							process.has_specified_input.push(material);
							experiment.has_first_part=process;
						} else parent[0].label=value;
					}
					var processEntity=this.plannedPocesses.filter(function(o){if(o.id == connectionSourceId)return o;});
					if(processEntity.length>0) {
						var id=processEntity[0].id;
						var parent = experiment.has_part.filter((function(o){if(o.id == id)return o;}));
						if(parent.length>0) {
							parent[0].provides_input_to.push(process);
							process.receives_input_from.push(parent[0]);
						}
					}
					var dataEntity=this.dataObjects.filter(function(o){if(o.id == connectionSourceId)return o;})
					if(dataEntity.length>0) {
						for(var y=0;y<dataEntity.length;y++) {
							var id=dataEntity[y].id;
							var value=dataEntity[y].value;
							var variableType=dataEntity[y].variableType;
							var dataObj= new (Function.prototype.bind.call(DataItem,0,id,value,variableType));
							if(variableType=="C" || variableType=="I") {
								process.is_parameterized_by.push(dataObj);
							} else if(variableType=="D"){
								process.has_specified_output.push(dataObj);
								experiment.has_participant.push(dataObj);
							}
						}
						
					}
					var dataEntity=this.dataObjects.filter(function(o){if(o.id == connectionTargetId)return o;})
					if(dataEntity.length>0) {
						for(var y=0;y<dataEntity.length;y++) {
							var id=dataEntity[y].id;
							var value=dataEntity[y].value;
							var variableType=dataEntity[y].variableType;
							var dataObj= new (Function.prototype.bind.call(DataItem,0,id,value,variableType));
							if(variableType=="C" || variableType=="I") {
								process.is_parameterized_by.push(dataObj);
							} else if(variableType=="D"){
								process.has_specified_output.push(dataObj);
								experiment.has_participant.push(dataObj);
							}
						}
						
					}
					
			}
		}
	}
	
	for (var k=0; k<this.materialEntities.length;k++) {
		var materialId=materialEntities[k].id;
		var parent = experiment.has_participant.filter((function(o){if(o.id == materialId)return o;}));
		if(parent.length==0) {
			var materialValue=this.materialEntities[k].value;
			var material= new (Function.prototype.bind.call(MaterialEntity,0,materialId,materialValue,""));
			var parent = experiment.has_participant.filter((function(o){if(o.id == materialId)return o;}));
			if(parent.length==0) 
				experiment.has_participant.push(material);
		}
	}
	for(var k=0;k<experiment.has_participant.length;k++) {
		var material = experiment.has_participant[k];
		var materialId=material.id;
		var connectionTarget = this.connections.filter(function(o){if((o.target == materialId))return o;} );
		if(connectionTarget.length>0){
			for(var i=0;i<connectionTarget.length;i++){
				var connection=connectionTarget[i];
				var dataEntity=this.dataObjects.filter(function(o){if(o.id == connection.source)return o;})
				if(dataEntity.length>0) {
					for(var y=0;y<dataEntity.length;y++) {
						var id=dataEntity[y].id;
						var value=dataEntity[y].value;
						var variableType=dataEntity[y].variableType;
						var dataObj= new (Function.prototype.bind.call(DataItem,0,id,value,variableType));
						if(variableType=="C" || variableType=="I") {
							material.is_parameterized_by.push(dataObj);
						}
					}
				}
			}
		}
	}
	
	for (var k=0; k<this.connections.length;k++) {
		var connection=connections[k];
		var dataEntity=this.dataObjects.filter(function(o){if(o.id == connection.target)return o;})
		var parent = experiment.has_part.filter((function(o){if(o.id == connection.source)return o;}));
		var material=experiment.has_participant.filter((function(o){if(o.id == connection.source)return o;}));
		if(dataEntity.length>0) {
			for(var y=0;y<dataEntity.length;y++) {
				var id=dataEntity[y].id;
				var value=dataEntity[y].value;
				var variableType=dataEntity[y].variableType;
				if(variableType=="D") {
				    var dataObj= new (Function.prototype.bind.call(DataItem,0,id,value,variableType));
				    experiment.has_participant.push(dataObj);
				    if(parent.length>0){
				    	dataObj.is_specified_output_of.push(parent[0]);
				    } 
				    if(material.length>0){
				    	dataObj.is_specified_output_of.push(material[0]);
				    }
				}
			}
		}
		
	}	
		
	
}

Study_Design.prototype.parseCell = function(xmlObject,has_part) {
	var xmlDoc = null;
	if (window.DOMParser) {
	    parser=new DOMParser();
	    xmlDoc=parser.parseFromString(xmlObject,"text/xml");
	} else { // Internet Explorer
	    xmlDoc=new ActiveXObject("Microsoft.XMLDOM");
	    xmlDoc.async=false;	
	    xmlDoc.loadXML(xmlObject); 
	}
	if(xmlDoc!=null) {
		this.diagramXML=xmlDoc;
		this.has_part=has_part;
		parseXML(xmlDoc,this.has_part);
	}
	return this;
};

Study_Design.prototype.get = function(name,xml){
	this.label=name;
	this.diagramXML=xml;
	parseXML(xmlDoc,this.has_part)
	return this;
}
function Study_Design() {
	this.ontologyId="";
	this.process_type="E";
	this.has_part = new Experiment();
	return this;
}

Study_Design.prototype.getPropertyObject=function(studyDesign,id) {
	var parent = studyDesign.has_part.has_part.filter((function(o){if(o.id == id)return o;}));
	if(parent.length==0) {
		var material=this.has_part.has_participant.filter((function(o){if(o.id == id)return o;}));
		if(material.length>0) {
			var metaData = material[0].metaData;
			if(metaData==null) metaData=new MetaData(id);
			return metaData;
		} else return new MetaData(id);
	} else {
		var metaData = parent[0].metaData;
		if(metaData==null) metaData=new MetaData(id);
		return metaData;
	}
}

Study_Design.prototype.fetchPropertyObject=function(id,label) {
	var parent = this.has_part.has_part.filter((function(o){if(o.id == id)return o;}));
	if(parent.length==0) {
		var material=this.has_part.has_participant.filter((function(o){if(o.id == id)return o;}));
		if(material.length>0) {
			var metaData = material[0].metaData;
			if(metaData==null) metaData=new MetaData(id,label);
			metaData.label=label;
			return metaData;
		} else return new MetaData(id);
	} else {
		var metaData = parent[0].metaData;
		if(metaData==null) metaData=new MetaData(id,label);
		metaData.label=label;
		return metaData;
	}
}

Study_Design.prototype.storePropertyObject=function(id,label,propertyObject) {
	if(id==NaN || id==undefined) return;
	var parent = this.has_part.has_part.filter((function(o){if(o.id == id)return o;}));
	if(parent.length==0) {
		var material=this.has_part.has_participant.filter((function(o){if(o.id == id)return o;}));
		if(material.length>0) {
			material[0].metaData= propertyObject;
			material[0].label=propertyObject.label;
		} else return;
	} else {
		parent[0].metaData= propertyObject;
		parent[0].label=propertyObject.label;
	}
		
}

function MetaData(id,label,alternateTerm,definition,definitionSource,exampleUsage,parentclass,notes) {
	this.id=parseInt(id);
	this.label=label;
	this.alternateTerm=alternateTerm;
	this.definition=definition;
	this.definitionSource=definitionSource;
	this.exampleUsage=exampleUsage;
	this.parentclass=parentclass;
	this.notes=notes;
}

function MetaData(id,label) {
	this.id=parseInt(id);
	this.label=label;
	this.alternateTerm="";
	this.definition="";
	this.definitionSource="";
	this.exampleUsage="";
	this.parentclass="";
	this.notes="";
}