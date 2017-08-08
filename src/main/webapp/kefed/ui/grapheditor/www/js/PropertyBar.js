function PropertyBar(editorUi, container)
{

	this.editorUi = editorUi;
	this.container = container;
	var ui = this.editorUi;
	var graph = ui.editor.graph;
	
	graph.getSelectionModel().addListener(mxEvent.CHANGE, mxUtils.bind(this, function()
	{		
		var mxCell=graph.getSelectionModel();
		if(mxCell.cells.length>0) {
			var cell=mxCell.cells[0];
			while (this.container.hasChildNodes()) {
				this.container.removeChild(this.container.lastChild);
			}
			if(cell.edge==false) {
				var div=this.createPanel(cell.id);
				div.appendChild(this.createTitle("Properties",0));
				var id=this.createPanel(cell.id);
				div.appendChild(this.createTitle("id",cell.id));
				this.container.append(div);
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
	div.style.borderBottom = '1px solid #c0c0c0';
	return div;
};

PropertyBar.prototype.createTitle = function(title,value)
{
	var div = document.createElement('div');
	div.style.padding = '0px 0px 6px 0px';
	div.style.whiteSpace = 'nowrap';
	div.style.overflow = 'hidden';
	div.style.width = '200px';
	div.style.fontWeight = 'bold';
	mxUtils.write(div, title);
	if(value!=0) mxUtils.write(div,value);
	
	return div;
};