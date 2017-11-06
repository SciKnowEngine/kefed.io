

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.media.*;
import flash.text.*;
import flash.external.*;
import flash.geom.*;
import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import mx.controls.List;
import flash.debugger.*;
import mx.containers.Form;
import flash.display.*;
import flash.xml.*;
import mx.containers.VBox;
import com.kapit.diagram.view.DiagramView;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.elements.KefedExperiment;
import edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
import flash.accessibility.*;
import edu.isi.bmkeg.kefed.elements.KefedFullValueTemplate;
import flash.printing.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.controls.DataGrid;
import flash.events.*;
import mx.containers.Panel;
import mx.controls.TextArea;
import edu.isi.bmkeg.kefed.elements.KefedObject;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property CopyLastDataRowButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'CopyLastDataRowButton' moved to '_1562195177CopyLastDataRowButton'
	 */

    [Bindable(event="propertyChange")]
    public function get CopyLastDataRowButton():mx.controls.Button
    {
        return this._1562195177CopyLastDataRowButton;
    }

    public function set CopyLastDataRowButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1562195177CopyLastDataRowButton;
        if (oldValue !== value)
        {
            this._1562195177CopyLastDataRowButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CopyLastDataRowButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property CopySelectedDataRowButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'CopySelectedDataRowButton' moved to '_1417417294CopySelectedDataRowButton'
	 */

    [Bindable(event="propertyChange")]
    public function get CopySelectedDataRowButton():mx.controls.Button
    {
        return this._1417417294CopySelectedDataRowButton;
    }

    public function set CopySelectedDataRowButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1417417294CopySelectedDataRowButton;
        if (oldValue !== value)
        {
            this._1417417294CopySelectedDataRowButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "CopySelectedDataRowButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property RemoveDataRowButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'RemoveDataRowButton' moved to '_3889442RemoveDataRowButton'
	 */

    [Bindable(event="propertyChange")]
    public function get RemoveDataRowButton():mx.controls.Button
    {
        return this._3889442RemoveDataRowButton;
    }

    public function set RemoveDataRowButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._3889442RemoveDataRowButton;
        if (oldValue !== value)
        {
            this._3889442RemoveDataRowButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RemoveDataRowButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property activeObjectForm (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'activeObjectForm' moved to '_1692088393activeObjectForm'
	 */

    [Bindable(event="propertyChange")]
    public function get activeObjectForm():mx.containers.VBox
    {
        return this._1692088393activeObjectForm;
    }

    public function set activeObjectForm(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1692088393activeObjectForm;
        if (oldValue !== value)
        {
            this._1692088393activeObjectForm = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "activeObjectForm", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property checkDataButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'checkDataButton' moved to '_1995125412checkDataButton'
	 */

    [Bindable(event="propertyChange")]
    public function get checkDataButton():mx.controls.Button
    {
        return this._1995125412checkDataButton;
    }

    public function set checkDataButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1995125412checkDataButton;
        if (oldValue !== value)
        {
            this._1995125412checkDataButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "checkDataButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cntrlVaribleList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cntrlVaribleList' moved to '_635914540cntrlVaribleList'
	 */

    [Bindable(event="propertyChange")]
    public function get cntrlVaribleList():mx.containers.Panel
    {
        return this._635914540cntrlVaribleList;
    }

    public function set cntrlVaribleList(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._635914540cntrlVaribleList;
        if (oldValue !== value)
        {
            this._635914540cntrlVaribleList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cntrlVaribleList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cntrlVbGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cntrlVbGrid' moved to '_424622251cntrlVbGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get cntrlVbGrid():mx.controls.List
    {
        return this._424622251cntrlVbGrid;
    }

    public function set cntrlVbGrid(value:mx.controls.List):void
    {
    	var oldValue:Object = this._424622251cntrlVbGrid;
        if (oldValue !== value)
        {
            this._424622251cntrlVbGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cntrlVbGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property createSpreadsheetButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'createSpreadsheetButton' moved to '_2001706114createSpreadsheetButton'
	 */

    [Bindable(event="propertyChange")]
    public function get createSpreadsheetButton():mx.controls.Button
    {
        return this._2001706114createSpreadsheetButton;
    }

    public function set createSpreadsheetButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2001706114createSpreadsheetButton;
        if (oldValue !== value)
        {
            this._2001706114createSpreadsheetButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "createSpreadsheetButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataGrid' moved to '_1788676624dataGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get dataGrid():mx.containers.VBox
    {
        return this._1788676624dataGrid;
    }

    public function set dataGrid(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1788676624dataGrid;
        if (oldValue !== value)
        {
            this._1788676624dataGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property depVaribleList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'depVaribleList' moved to '_425006936depVaribleList'
	 */

    [Bindable(event="propertyChange")]
    public function get depVaribleList():mx.containers.Panel
    {
        return this._425006936depVaribleList;
    }

    public function set depVaribleList(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._425006936depVaribleList;
        if (oldValue !== value)
        {
            this._425006936depVaribleList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "depVaribleList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property depVbData (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'depVbData' moved to '_1550703259depVbData'
	 */

    [Bindable(event="propertyChange")]
    public function get depVbData():mx.controls.DataGrid
    {
        return this._1550703259depVbData;
    }

    public function set depVbData(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._1550703259depVbData;
        if (oldValue !== value)
        {
            this._1550703259depVbData = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "depVbData", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property depVbGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'depVbGrid' moved to '_1550597887depVbGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get depVbGrid():mx.controls.List
    {
        return this._1550597887depVbGrid;
    }

    public function set depVbGrid(value:mx.controls.List):void
    {
    	var oldValue:Object = this._1550597887depVbGrid;
        if (oldValue !== value)
        {
            this._1550597887depVbGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "depVbGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property descriptionField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionField' moved to '_483740254descriptionField'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionField():mx.controls.TextArea
    {
        return this._483740254descriptionField;
    }

    public function set descriptionField(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._483740254descriptionField;
        if (oldValue !== value)
        {
            this._483740254descriptionField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property diagram (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'diagram' moved to '_1654878419diagram'
	 */

    [Bindable(event="propertyChange")]
    public function get diagram():com.kapit.diagram.view.DiagramView
    {
        return this._1654878419diagram;
    }

    public function set diagram(value:com.kapit.diagram.view.DiagramView):void
    {
    	var oldValue:Object = this._1654878419diagram;
        if (oldValue !== value)
        {
            this._1654878419diagram = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "diagram", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property flatPanel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'flatPanel' moved to '_1140400629flatPanel'
	 */

    [Bindable(event="propertyChange")]
    public function get flatPanel():mx.containers.Panel
    {
        return this._1140400629flatPanel;
    }

    public function set flatPanel(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._1140400629flatPanel;
        if (oldValue !== value)
        {
            this._1140400629flatPanel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flatPanel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property indepVaribleList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'indepVaribleList' moved to '_130453773indepVaribleList'
	 */

    [Bindable(event="propertyChange")]
    public function get indepVaribleList():mx.containers.Panel
    {
        return this._130453773indepVaribleList;
    }

    public function set indepVaribleList(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._130453773indepVaribleList;
        if (oldValue !== value)
        {
            this._130453773indepVaribleList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indepVaribleList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property indepVbGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'indepVbGrid' moved to '_1393578628indepVbGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get indepVbGrid():mx.controls.List
    {
        return this._1393578628indepVbGrid;
    }

    public function set indepVbGrid(value:mx.controls.List):void
    {
    	var oldValue:Object = this._1393578628indepVbGrid;
        if (oldValue !== value)
        {
            this._1393578628indepVbGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indepVbGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property loadToGridButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'loadToGridButton' moved to '_2025967353loadToGridButton'
	 */

    [Bindable(event="propertyChange")]
    public function get loadToGridButton():mx.controls.Button
    {
        return this._2025967353loadToGridButton;
    }

    public function set loadToGridButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2025967353loadToGridButton;
        if (oldValue !== value)
        {
            this._2025967353loadToGridButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "loadToGridButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelCitation (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelCitation' moved to '_1462030032modelCitation'
	 */

    [Bindable(event="propertyChange")]
    public function get modelCitation():mx.controls.TextInput
    {
        return this._1462030032modelCitation;
    }

    public function set modelCitation(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1462030032modelCitation;
        if (oldValue !== value)
        {
            this._1462030032modelCitation = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelCitation", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelInfo (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelInfo' moved to '_2010966153modelInfo'
	 */

    [Bindable(event="propertyChange")]
    public function get modelInfo():mx.containers.Form
    {
        return this._2010966153modelInfo;
    }

    public function set modelInfo(value:mx.containers.Form):void
    {
    	var oldValue:Object = this._2010966153modelInfo;
        if (oldValue !== value)
        {
            this._2010966153modelInfo = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelInfo", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelName' moved to '_2010829484modelName'
	 */

    [Bindable(event="propertyChange")]
    public function get modelName():mx.controls.TextInput
    {
        return this._2010829484modelName;
    }

    public function set modelName(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._2010829484modelName;
        if (oldValue !== value)
        {
            this._2010829484modelName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelSource (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelSource' moved to '_484478116modelSource'
	 */

    [Bindable(event="propertyChange")]
    public function get modelSource():mx.controls.TextInput
    {
        return this._484478116modelSource;
    }

    public function set modelSource(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._484478116modelSource;
        if (oldValue !== value)
        {
            this._484478116modelSource = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelSource", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property spreadsheet (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'spreadsheet' moved to '_2120983604spreadsheet'
	 */

    [Bindable(event="propertyChange")]
    public function get spreadsheet():mx.controls.TextArea
    {
        return this._2120983604spreadsheet;
    }

    public function set spreadsheet(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._2120983604spreadsheet;
        if (oldValue !== value)
        {
            this._2120983604spreadsheet = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spreadsheet", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomControl' moved to '_22115850zoomControl'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomControl():edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider
    {
        return this._22115850zoomControl;
    }

    public function set zoomControl(value:edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider):void
    {
    	var oldValue:Object = this._22115850zoomControl;
        if (oldValue !== value)
        {
            this._22115850zoomControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomControl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataTable (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'dataTable' moved to '_374106556dataTable'
	 */

    [Bindable(event="propertyChange")]
    protected function get dataTable():ArrayCollection
    {
        return this._374106556dataTable;
    }

    protected function set dataTable(value:ArrayCollection):void
    {
    	var oldValue:Object = this._374106556dataTable;
        if (oldValue !== value)
        {
            this._374106556dataTable = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataTable", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataColumns (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'dataColumns' moved to '_531485485dataColumns'
	 */

    [Bindable(event="propertyChange")]
    protected function get dataColumns():Array
    {
        return this._531485485dataColumns;
    }

    protected function set dataColumns(value:Array):void
    {
    	var oldValue:Object = this._531485485dataColumns;
        if (oldValue !== value)
        {
            this._531485485dataColumns = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataColumns", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property variableType (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'variableType' moved to '_372820010variableType'
	 */

    [Bindable(event="propertyChange")]
    protected function get variableType():KefedFullValueTemplate
    {
        return this._372820010variableType;
    }

    protected function set variableType(value:KefedFullValueTemplate):void
    {
    	var oldValue:Object = this._372820010variableType;
        if (oldValue !== value)
        {
            this._372820010variableType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variableType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property activeVb (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'activeVb' moved to '_1655971758activeVb'
	 */

    [Bindable(event="propertyChange")]
    protected function get activeVb():KefedObject
    {
        return this._1655971758activeVb;
    }

    protected function set activeVb(value:KefedObject):void
    {
    	var oldValue:Object = this._1655971758activeVb;
        if (oldValue !== value)
        {
            this._1655971758activeVb = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "activeVb", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property termLookupService (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termLookupService' moved to '_1732742449termLookupService'
	 */

    [Bindable(event="propertyChange")]
    public function get termLookupService():OntologySearchInterface
    {
        return this._1732742449termLookupService;
    }

    public function set termLookupService(value:OntologySearchInterface):void
    {
    	var oldValue:Object = this._1732742449termLookupService;
        if (oldValue !== value)
        {
            this._1732742449termLookupService = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termLookupService", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property model (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'model' moved to '_104069929model'
	 */

    [Bindable(event="propertyChange")]
    protected function get model():KefedExperiment
    {
        return this._104069929model;
    }

    protected function set model(value:KefedExperiment):void
    {
    	var oldValue:Object = this._104069929model;
        if (oldValue !== value)
        {
            this._104069929model = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "model", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property depVbs (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'depVbs' moved to '_1335354184depVbs'
	 */

    [Bindable(event="propertyChange")]
    protected function get depVbs():ArrayCollection
    {
        return this._1335354184depVbs;
    }

    protected function set depVbs(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1335354184depVbs;
        if (oldValue !== value)
        {
            this._1335354184depVbs = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "depVbs", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property indepVbs (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'indepVbs' moved to '_112261661indepVbs'
	 */

    [Bindable(event="propertyChange")]
    protected function get indepVbs():ArrayCollection
    {
        return this._112261661indepVbs;
    }

    protected function set indepVbs(value:ArrayCollection):void
    {
    	var oldValue:Object = this._112261661indepVbs;
        if (oldValue !== value)
        {
            this._112261661indepVbs = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indepVbs", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cntrlVbs (protected)
	 * - generated setter
	 * - generated getter
	 * - original protected var 'cntrlVbs' moved to '_1284712732cntrlVbs'
	 */

    [Bindable(event="propertyChange")]
    protected function get cntrlVbs():ArrayCollection
    {
        return this._1284712732cntrlVbs;
    }

    protected function set cntrlVbs(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1284712732cntrlVbs;
        if (oldValue !== value)
        {
            this._1284712732cntrlVbs = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cntrlVbs", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property saveAllowed (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'saveAllowed' moved to '_220683925saveAllowed'
	 */

    [Bindable(event="propertyChange")]
    public function get saveAllowed():Boolean
    {
        return this._220683925saveAllowed;
    }

    public function set saveAllowed(value:Boolean):void
    {
    	var oldValue:Object = this._220683925saveAllowed;
        if (oldValue !== value)
        {
            this._220683925saveAllowed = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "saveAllowed", oldValue, value));
        }
    }



}
