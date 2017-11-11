function TemplateObject(xmlDoc,filename,xml) {
	this.label=filename;
	this.xml=xml;
	this.processType="E";
	this.dataObjects=[];
    this.forks=[];
    this.branches=[];
	this.materialEntities=[];
	this.plannedPocesses=[];
	this.connections=[];
	this.dataObjects=[];
	
	var x = xmlDoc.getElementsByTagName('mxCell');
	for (i = 0; i < x.length ;i++) {
		if(xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("style")!=null) {
			var style= xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("style");
			switch(style.split(";")[0]) {
				case "parameter":  console.log("parameter");
							  	   var parameter=new DataObject(
							  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
							  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
							  			"I",""
						     	   );
							  	   this.dataObjects.push(parameter);
							       break;	  
							       
				case "measurement":console.log("measurement");
							  	   var parameter=new DataObject(
								  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			"D",""
							     	   );
								   this.dataObjects.push(parameter);
								   break;
				 
							       
				case "process":    console.log("process");
					  			   var process= new PlannedProcess(
					  					 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
					  					 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  		"","",[]	   
					  			   );
					  			   this.plannedPocesses.push(process);
					  			   break;
				  			   
				case "entity":     console.log("entity");
								   var materialEntity= new MaterialEntity(
						  			 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
						  			 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
									 "","",[]	   
						  		   );
						  		   this.materialEntities.push(materialEntity);
						  		   break;
				  				
				case "constant":   console.log("constant");
								   var parameter=new DataObject(
								  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			"C",""
								   );
								   this.dataObjects.push(parameter);
								   break;
								   this.dataObjects.push(constant);
								   break;
								   
				case "fork":       console.log("fork");
								   var fork=new Fork(
											 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
								  			 xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
								  			 "","",[]
								   );
								   this.forks.push(constant);
								   break;
				
				case "branch":     console.log("branch");
					 			   var fork=new Fork(
                           		    		xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("id"),
                        					xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("value"),
                        					"","",[]
								   );
					 			   this.branches.push(constant);
					 			   break;
						           
				default:           console.log("connection");
								   var connnection = new Connection(
										xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("source"),
								  		xmlDoc.getElementsByTagName('mxCell')[i].getAttribute("target")
								   );	
								   this.connections.push(connnection);
						           break;
			}
		}
	
	}
	for (var i=0; i<this.connections.length;i++) {
		var sourceId=this.connections[i].source;
		var targetId=this.connections[i].target;
		var parameter = this.dataObjects.filter(function(o){if(o.id == sourceId)return o;});
		if(parameter.length>0) {
			var entity=this.materialEntities.filter(function(o){if(o.id == targetId)return o;} );
			var plannedProcess=this.plannedPocesses.filter(function(o){if(o.id == targetId)return o;} );
			if(entity.length>0) {
				entity[0].dataObjectParameters.push(parameter[0]);
			} else if(plannedProcess.length>0) {
				plannedProcess[0].dataObjectParameters.push(parameter[0]);
			}
		}
	}
	
	
}

function MaterialEntity(id,label,processType,ontologyId,dataObjectParameters) {
	this.id=id;
	this.label=label;
	this.processType=processType;
	this.ontologyId=ontologyId;
	this.dataObjectParameters=dataObjectParameters;
}

function Fork(id,label,processType,ontologyId,dataObjectParameters) {
	this.id=id;
	this.label=label;
	this.processType=processType;
	this.ontologyId=ontologyId;
	this.dataObjectParameters=dataObjectParameters;
}

function Branch(id,label,processType,ontologyId,dataObjectParameters) {
    this.id=id;
    this.label=label;
    this.processType=processType;
    this.ontologyId=ontologyId;
    this.dataObjectParameters=dataObjectParameters;
}

function PlannedProcess(id,label,processType,ontologyId,dataObjectParameters) {
	this.id=id;
	this.label=label;
	this.processType=processType;
	this.ontologyId=ontologyId;
	this.dataObjectParameters=dataObjectParameters;
}

function DataObject(id,label,variableType,ontologyId) {
	this.id=id;
	this.label=label;
	this.variableType=variableType;
	this.ontologyId=ontologyId;
}

function Connection(source,target) {
	this.source=source;
	this.target=target;
}
