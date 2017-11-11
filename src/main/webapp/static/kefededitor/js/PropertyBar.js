/***
 * 
 * 
 * Property Bar initializes the kefeD module properties of each component. The file is integrated with kefeD.js.
 * Updates are made into MetaData of kefed components : Process, Material Entity.
 * 
 * @param editorUi
 * @param container
 * @returns
 */
function PropertyBar(editorUi, container)
{

	this.editorUi = editorUi;
	this.container = container;
	var ui = this.editorUi;
	var graph = ui.editor.graph;
	this.propertyObject=null;
	
	graph.getSelectionModel().addListener(mxEvent.CHANGE, mxUtils.bind(this, function()
	{		
		var mxCell=graph.getSelectionModel();
		if(mxCell.cells.length>0) {
			var cell=mxCell.cells[0];
			if(cell.edge==false) {
				this.propertyObject=this.fetchSavedObject(cell.id,this.propertyObject,this.callbackDataObject);
				while (this.container.hasChildNodes()) {
					this.container.removeChild(this.container.lastChild);
				}
				var propertyObject=new Object();
				if(this.propertyObject!=null && this.propertyObject!="" && this.propertyObject!=undefined) {
					propertyObject=JSON.parse(this.propertyObject);
				} 	
					var div=this.createPanel(cell.id);
					var value=this.createTitle("Id:"+cell.id,0);
					var title=this.createTitle("Properties",0);
					title.style.textAlign='center';
					value.style.paddingRight='26px';
					value.style.float='right';
					div.appendChild(title);
					div.appendChild(value);
					
					div.appendChild(document.createElement("hr"));
					
					var label=this.createTitle("Label:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var label2=this.createTitle(cell.value==undefined?"":cell.value,0);
					label2.style.fontWeight='normal';
					div.appendChild(label2);
					
					div.appendChild(document.createElement("hr"));
					
					var label=this.createTitle("Alternative Term:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('input');
					input.id='alternateTerm';
					input.value=propertyObject.alternateTerm==undefined?"":propertyObject.alternateTerm;
					input.style.fontWeight='normal';
					input.style.textAlign = 'right';
					input.style.float='left';
					input.style.marginRight = '26px';
					div.appendChild(input);
					
					
					var label=this.createTitle("Definition:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('input');
					input.id='definition';
					input.value=propertyObject.definition==undefined?"":propertyObject.definition;
					input.style.fontWeight='normal';
					input.style.textAlign = 'right';
					input.style.marginRight = '26px';
					input.style.float='left';
					div.appendChild(input);
					
					
					var label=this.createTitle("Definition Source:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('input');
					input.id='definitionSource';
					input.value=propertyObject.definitionSource==undefined?"":propertyObject.definitionSource;
					input.style.fontWeight='normal';
					input.style.textAlign = 'right';
					input.style.marginRight = '26px';
					input.style.float='left';
					div.appendChild(input);
					
					
					var label=this.createTitle("Example Usage:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('input');
					input.id='exampleUsage';
					input.value=propertyObject.exampleUsage==undefined?"":propertyObject.exampleUsage;
					input.style.fontWeight='normal';
					input.style.textAlign = 'right';
					input.style.marginRight = '26px';
					input.style.float='left';
					div.appendChild(input);
					
					
					var label=this.createTitle("Parent Class:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('input');
					input.id='parentclass';
					input.value=propertyObject.parentclass==undefined?"":propertyObject.parentclass;
					input.style.fontWeight='normal';
					input.style.textAlign = 'right';
					input.style.marginRight = '26px';
					input.style.float='left';
					div.appendChild(input);
					
					var label=this.createTitle("Notes:",0);
					label.style.fontWeight='bold';
					label.style.float='left';
					div.appendChild(label);
					
					var input = document.createElement('textarea');
					input.id='notes';
					input.value=propertyObject.notes==undefined?"":propertyObject.notes;
					input.style.fontWeight='normal';
					input.style.paddingLeft='6px';
					input.style.textAlign = 'right';
					input.style.marginRight = '26px';
					input.style.height = '80px';
					input.style.float='left';
					div.appendChild(input);
					
					var btn = mxUtils.button("Save", function()
					{
						var propertyObject = new Object();
						propertyObject.id=parseInt(cell.id);
						propertyObject.label=cell.value;
						propertyObject.alternateTerm=document.getElementById('alternateTerm').value;
						propertyObject.definition=document.getElementById('definition').value;
						propertyObject.definitionSource=document.getElementById('definitionSource').value;
						propertyObject.exampleUsage=document.getElementById('exampleUsage').value;
						propertyObject.parentclass=document.getElementById('parentclass').value;
						propertyObject.notes=document.getElementById('notes').value;
						
						var xhttp = new XMLHttpRequest();
						xhttp.open("POST", "/saveDataObjectProperty", false);
						xhttp.setRequestHeader("Content-type", "application/json");
							
						xhttp.send(JSON.stringify(propertyObject));
						xhttp.onreadystatechange = function () {
						    if (xhttp.readyState === 4 && xhttp.status === 200) {
						    	console.log("success");
						    }
						};
						
					})
							
					btn.setAttribute('title', "Save");
					btn.style.marginRight = '2px';
					btn.style.textAlign = 'center';
					btn.style.float='left';
					div.appendChild(btn);
					
					this.container.append(div);
			} else {
				while (this.container.hasChildNodes()) {
					this.container.removeChild(this.container.lastChild);
				}
			}
		} else {
			while (this.container.hasChildNodes()) {
				this.container.removeChild(this.container.lastChild);
			}
		}
	}));
	
}

PropertyBar.prototype.createPanel = function(id)
{
	var div = document.createElement('div');
	div.id = id;
	div.style.padding = '12px 0px 12px 18px';
	return div;
};

PropertyBar.prototype.createTitle = function(title,value)
{
	var div = document.createElement('div');
	div.style.padding = '0px 0px 6px 0px';
	div.style.fontWeight = 'bold';
	div.style.display = 'inline-block';
	mxUtils.write(div, title);
	if(value!=0) mxUtils.write(div,value);
	
	return div;
};

PropertyBar.prototype.fetchSavedObject = function(id,propertyObject,callback)
{
	var xhttp = new XMLHttpRequest();
		
	xhttp.onreadystatechange = function () {
	    if (xhttp.readyState === 4 && xhttp.status === 200) {
	    	propertyObject=callback(xhttp.response);
	    	return propertyObject;
	    }
	};
	xhttp.open("GET", "/loadDataObjectProperty?id="+parseInt(id), false);
	xhttp.setRequestHeader("Content-type", "application/json");
	xhttp.send();
	return propertyObject;
}

PropertyBar.prototype.callbackDataObject = function(response) {
	return response;
}
