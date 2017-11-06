/***
 * 
 * 
 * This js file is structured as per data model on wiki. The explanation is provided in documentation
 * @param id
 * @param label
 * @param variableType
 * @param ontologyId
 * @param material
 * @param process
 * @returns
 */

function DataItem(id,label,variableType,ontologyId) {
	Continuant.apply(this,[id,label,ontologyId]);
	this.type = 'DataItem'
	this.variable_type = variableType==undefined?"":variableType;
	this.metaData=null;
	this.has_value_specification = []
}

function NaturalLanguage_VS () {
    ValueSpecification.apply(this,arguments);
    this.type = 'NaturalLanguage_VS'
    this.language = ''
}

function StructuredObject_VS () {
	ValueSpecification.apply(this,arguments);
    this.type = 'NaturalLanguage_VS'
    this.type_label = ''
	this.has_part = []
}

function Continuant(id,label,ontologyId) {
    this.type = 'Continuant'
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
    this.type = 'MaterialEntity'
    this.is_parameterized_by = [];
}

function Investigation() {
    this.type = 'Investigation'
    this.label = label;
	this.ontologyId = "";;
	this.realized_by = [];
	this.has_design = "";
}

function OntologicalTerm_VS () {
	ValueSpecification.apply(this,arguments);
    this.type = 'OntologicalTerm_VS'
    this.is_about = "";
}

function URI() {
    this.type = 'URI'
    this.url = new URL()
}

function Experiment() {
	PlannedProcess.apply(this,["",0,"E",""]);
    this.type = 'Experiment'
}

function Scalar_VS() {
	ValueSpecification.apply(this,arguments);
    this.type = 'Scalar_VS'
    this.precision_code = ''
	this.max = 0.0
	this.min = 0.0
}

function ProvenanceContext() {
    this.type = 'ProvenanceContext'
    this.is_parameterized_by = []
	this.is_provenance_context_for = new ValueSpecification()
}

function PlannedProcess(label,id,processtype,ontologyId) {
    this.type = 'PlannedProcess'
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
    this.type = 'Nominal_VS'
}

function Ordinal_VS(){
	ValueSpecification.apply(this,arguments);
    this.type = 'Ordinal_VS'
    this.max_rank = 0
	this.rank_labels = []
}

function Study_Design_Execution(label,ontologyId) {
    this.type = 'Study_Design_Execution'
    this.label=label;
	this.ontologyId=ontologyId;
	this.has_part = new Experiment();
}

function ValueSpecification() {
    this.type = 'ValueSpecification'
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
    this.type = 'Categorical_VS'
    this.category_labels = []
}

function parseXML(xmlDoc,experiment) {

    var dataObjects=[];
	var materialEntities=[];
	var plannedPocesses=[];
	var connections=[];
	var hashTable = {};
	
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
							  	   dataObjects.push(parameter);
							       break;	  
							       
				case "measurement":console.log("measurement");
							  	   var parameter={
								  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			variableType:"D"
							  	   };
								   dataObjects.push(parameter);
								   break;
							       
				case "process":    console.log("process");
					  			   var process= {
					  					 id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
					  					 value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
					  			   };
					  			   plannedPocesses.push(process);
					  			   break;
				  			   
				case "entity":     console.log("entity");
								   var materialEntity= {
						  			 id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
						  			 value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value")
								   };
						  		   materialEntities.push(materialEntity);
						  		   break;
				  				
				case "constant":   console.log("constant");
								   var parameter={
								  			id:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			value:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			variableType:'C'
								   };
								   dataObjects.push(parameter);
								   break;
								   
				default:           console.log("connection");
								   var connnection = {
										source:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("source"),
								  		target:xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("target")
								   };	
								   connections.push(connnection);
						           break;

			}

		}
	
	}

    plannedPocesses.forEach(function(pp) {
        var p = new PlannedProcess(pp.value, pp.id, "M", "");
        hashTable[p.id] = p;
        experiment.has_part.push(p);
    });

    materialEntities.forEach(function(mm) {
        var m = new MaterialEntity(mm.id, mm.value, "");
        hashTable[m.id] = m;
        experiment.has_participant.push(m);
    });

    dataObjects.forEach(function(dd) {
        var d = new DataItem(dd.id, dd.value, dd.variableType );
        hashTable[d.id] = d;
        experiment.has_participant.push(d);
    });

	connections.forEach(function(c) {

        var s = hashTable[c.source];
        var t = hashTable[c.target];

        if( s instanceof PlannedProcess && t instanceof PlannedProcess ) {
			s.provides_input_to.push(t);
        } else if(s instanceof PlannedProcess && t instanceof MaterialEntity ) {
            s.has_specified_output.push(t);
            s.process_type = "M";
    	} else if(s instanceof MaterialEntity && t instanceof PlannedProcess ) {
        	t.has_specified_input.push(s);
    	} else if(s instanceof DataItem && t instanceof PlannedProcess
				&& (s.variable_type == "I" || s.variable_type == "C") ) {
            t.is_parameterized_by.push(s);
        } else if(s instanceof DataItem && t instanceof MaterialEntity
            	&& (s.variable_type == "I" || s.variable_type == "C") ) {
            t.is_parameterized_by.push(s);
        } else if(s instanceof PlannedProcess && t instanceof DataItem
            	&& (t.variable_type == "D") ) {
            s.has_specified_output.push(t);
        } else if(s instanceof DataItem && t instanceof PlannedProcess
            && (s.variable_type == "D") ) {
            s.has_specified_input.push(t);
            t.process_type = "D";
        } else {
        	// COULD PUT ERROR CHECKING HERE.
            var pause = 0;
		}
    });

    /**
	 * Cycle through all planned processes and fill in process types.
     */
    for( var i in experiment.has_part ) {
    	var p = experiment.has_part[i];
    	if( p.process_type.length > 0 )
    		continue;
    	var ptype = "";
        p.has_specified_input.forEach(function(inObj) {
            p.has_specified_output.forEach(function(outObj) {
	            if( inObj instanceof MaterialEntity && outObj instanceof MaterialEntity
						&& (ptype == "M" || ptype.length == 0) ) {
                    ptype = "M"
                } else if( inObj instanceof MaterialEntity && outObj instanceof DataItem
	                    && (ptype == "A" || ptype.length == 0) ) {
	            	ptype = "A"
                } else if( inObj instanceof DataItem && outObj instanceof DataItem
                    && (ptype == "D" || ptype.length == 0) ) {
                    ptype = "A"
	            } else {
                    // COULD PUT ERROR CHECKING HERE.
                    var pause = 0;
				}
        	})
        });
        p.process_type = ptype;
    }

    pause = 0;

    /*for (var k=0; k<this.plannedPocesses.length;k++) {
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

   for (var k=0; k<this.dataObjects.length;k++) {
       var materialId=dataObjects[k].id;
       var parent = experiment.has_participant.filter((function(o){if(o.id == materialId)return o;}));
       if(parent.length==0) {
           var materialValue=this.dataObjects[k].value;
           var material= new (Function.prototype.bind.call(DataItem,0,materialId,materialValue,""));
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
                           //material.is_specified_input_of.push(dataObj);
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
       var dataObj=experiment.has_participant.filter((function(o){if(o.id == connection.target)return o;}));

       if(dataEntity.length>0) {
           for(var y=0;y<dataEntity.length;y++) {
               var id=dataEntity[y].id;
               var value=dataEntity[y].value;
               var variableType=dataEntity[y].variableType;
               if(variableType=="D") {
                   if(parent.length>0){
                       if(dataObj.length>0)
                       dataObj[0].is_specified_output_of.push(parent[0]);
                   }
                   if(material.length>0){
                       if(dataObj.length>0)
                       dataObj[0].is_specified_output_of.push(material[0]);
                   }
               }
           }
       }

   }*/

	
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
		if(has_part!=undefined)this.has_part=has_part;
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

Study_Design.prototype.correctTemplateObject=function() {
	//var parent = this.has_part.has_part.filter((function(o,index){if(o.metaData == null)this.has_part.has_part.splice(index);}));
	//var material=this.has_part.has_participant.filter((function(o,index){if(o.metaData == null)this.has_part.has_participant.splice(index);}));
	return this;
}

function Study_Design() {
    this.type = 'Study_Design'
    this.ontologyId="";
	this.has_part = new Experiment();
    this.has_part.process_type="E";
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
			return metaData;
		} else return new MetaData(id,label);
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
		} else return new MetaData(id,label);
	} else {
		parent[0].metaData= propertyObject;
		parent[0].label=propertyObject.label;
	}
		
}

function MetaData(id,label,alternateTerm,definition,definitionSource,exampleUsage,parentclass,notes) {
    this.type = 'MetaData'
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
    this.type = 'MetaData'
    this.id=parseInt(id);
	this.label=label;
	this.alternateTerm="";
	this.definition="";
	this.definitionSource="";
	this.exampleUsage="";
	this.parentclass="";
	this.notes="";
}
