

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
import flash.debugger.*;
import edu.isi.bmkeg.kefed.store.IModelStore;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.elements.KefedExperiment;
import flash.accessibility.*;
import flash.printing.*;
import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList;
import mx.controls.Label;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.DataGrid;
import flash.events.*;
import mx.controls.TextArea;
import edu.isi.bmkeg.kefed.elements.KefedModel;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;
import edu.isi.bmkeg.kefed.store.IDataStore;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property copyDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'copyDesignButton' moved to '_315198117copyDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get copyDesignButton():mx.controls.Button
    {
        return this._315198117copyDesignButton;
    }

    public function set copyDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._315198117copyDesignButton;
        if (oldValue !== value)
        {
            this._315198117copyDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "copyDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property copyExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'copyExperimentButton' moved to '_905926876copyExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get copyExperimentButton():mx.controls.Button
    {
        return this._905926876copyExperimentButton;
    }

    public function set copyExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._905926876copyExperimentButton;
        if (oldValue !== value)
        {
            this._905926876copyExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "copyExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property deleteDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'deleteDesignButton' moved to '_7094309deleteDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get deleteDesignButton():mx.controls.Button
    {
        return this._7094309deleteDesignButton;
    }

    public function set deleteDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._7094309deleteDesignButton;
        if (oldValue !== value)
        {
            this._7094309deleteDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deleteDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property deleteExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'deleteExperimentButton' moved to '_799101274deleteExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get deleteExperimentButton():mx.controls.Button
    {
        return this._799101274deleteExperimentButton;
    }

    public function set deleteExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._799101274deleteExperimentButton;
        if (oldValue !== value)
        {
            this._799101274deleteExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "deleteExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property designCount (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'designCount' moved to '_928774671designCount'
	 */

    [Bindable(event="propertyChange")]
    public function get designCount():mx.controls.Label
    {
        return this._928774671designCount;
    }

    public function set designCount(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._928774671designCount;
        if (oldValue !== value)
        {
            this._928774671designCount = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "designCount", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property editDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'editDesignButton' moved to '_601887162editDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get editDesignButton():mx.controls.Button
    {
        return this._601887162editDesignButton;
    }

    public function set editDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._601887162editDesignButton;
        if (oldValue !== value)
        {
            this._601887162editDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "editDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property editExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'editExperimentButton' moved to '_811361351editExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get editExperimentButton():mx.controls.Button
    {
        return this._811361351editExperimentButton;
    }

    public function set editExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._811361351editExperimentButton;
        if (oldValue !== value)
        {
            this._811361351editExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "editExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experimentCount (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'experimentCount' moved to '_677020910experimentCount'
	 */

    [Bindable(event="propertyChange")]
    public function get experimentCount():mx.controls.Label
    {
        return this._677020910experimentCount;
    }

    public function set experimentCount(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._677020910experimentCount;
        if (oldValue !== value)
        {
            this._677020910experimentCount = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experimentCount", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experimentGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'experimentGrid' moved to '_2056492259experimentGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get experimentGrid():mx.controls.DataGrid
    {
        return this._2056492259experimentGrid;
    }

    public function set experimentGrid(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._2056492259experimentGrid;
        if (oldValue !== value)
        {
            this._2056492259experimentGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experimentGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property exportDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'exportDesignButton' moved to '_7567260exportDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get exportDesignButton():mx.controls.Button
    {
        return this._7567260exportDesignButton;
    }

    public function set exportDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._7567260exportDesignButton;
        if (oldValue !== value)
        {
            this._7567260exportDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exportDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property exportExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'exportExperimentButton' moved to '_2105584995exportExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get exportExperimentButton():mx.controls.Button
    {
        return this._2105584995exportExperimentButton;
    }

    public function set exportExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._2105584995exportExperimentButton;
        if (oldValue !== value)
        {
            this._2105584995exportExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exportExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property importDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'importDesignButton' moved to '_1702394155importDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get importDesignButton():mx.controls.Button
    {
        return this._1702394155importDesignButton;
    }

    public function set importDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1702394155importDesignButton;
        if (oldValue !== value)
        {
            this._1702394155importDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "importDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property importExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'importExperimentButton' moved to '_218434388importExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get importExperimentButton():mx.controls.Button
    {
        return this._218434388importExperimentButton;
    }

    public function set importExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._218434388importExperimentButton;
        if (oldValue !== value)
        {
            this._218434388importExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "importExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property list (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'list' moved to '_3322014list'
	 */

    [Bindable(event="propertyChange")]
    public function get list():edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList
    {
        return this._3322014list;
    }

    public function set list(value:edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList):void
    {
    	var oldValue:Object = this._3322014list;
        if (oldValue !== value)
        {
            this._3322014list = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "list", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newDesignButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newDesignButton' moved to '_336094128newDesignButton'
	 */

    [Bindable(event="propertyChange")]
    public function get newDesignButton():mx.controls.Button
    {
        return this._336094128newDesignButton;
    }

    public function set newDesignButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._336094128newDesignButton;
        if (oldValue !== value)
        {
            this._336094128newDesignButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newDesignButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newExperimentButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newExperimentButton' moved to '_1428679503newExperimentButton'
	 */

    [Bindable(event="propertyChange")]
    public function get newExperimentButton():mx.controls.Button
    {
        return this._1428679503newExperimentButton;
    }

    public function set newExperimentButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1428679503newExperimentButton;
        if (oldValue !== value)
        {
            this._1428679503newExperimentButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newExperimentButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property selectedOntologiesLabel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'selectedOntologiesLabel' moved to '_2105015468selectedOntologiesLabel'
	 */

    [Bindable(event="propertyChange")]
    public function get selectedOntologiesLabel():mx.controls.TextArea
    {
        return this._2105015468selectedOntologiesLabel;
    }

    public function set selectedOntologiesLabel(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._2105015468selectedOntologiesLabel;
        if (oldValue !== value)
        {
            this._2105015468selectedOntologiesLabel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "selectedOntologiesLabel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property templateGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'templateGrid' moved to '_976355616templateGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get templateGrid():mx.controls.DataGrid
    {
        return this._976355616templateGrid;
    }

    public function set templateGrid(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._976355616templateGrid;
        if (oldValue !== value)
        {
            this._976355616templateGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "templateGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelStore' moved to '_2093981496modelStore'
	 */

    [Bindable(event="propertyChange")]
    public function get modelStore():IModelStore
    {
        return this._2093981496modelStore;
    }

    public function set modelStore(value:IModelStore):void
    {
    	var oldValue:Object = this._2093981496modelStore;
        if (oldValue !== value)
        {
            this._2093981496modelStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property schemaStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'schemaStore' moved to '_1021562944schemaStore'
	 */

    [Bindable(event="propertyChange")]
    public function get schemaStore():IModelStore
    {
        return this._1021562944schemaStore;
    }

    public function set schemaStore(value:IModelStore):void
    {
    	var oldValue:Object = this._1021562944schemaStore;
        if (oldValue !== value)
        {
            this._1021562944schemaStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataStore' moved to '_374451369dataStore'
	 */

    [Bindable(event="propertyChange")]
    public function get dataStore():IDataStore
    {
        return this._374451369dataStore;
    }

    public function set dataStore(value:IDataStore):void
    {
    	var oldValue:Object = this._374451369dataStore;
        if (oldValue !== value)
        {
            this._374451369dataStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property templateList (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'templateList' moved to '_976214984templateList'
	 */

    [Bindable(event="propertyChange")]
    private function get templateList():ArrayCollection
    {
        return this._976214984templateList;
    }

    private function set templateList(value:ArrayCollection):void
    {
    	var oldValue:Object = this._976214984templateList;
        if (oldValue !== value)
        {
            this._976214984templateList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "templateList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property ontologyList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ontologyList' moved to '_996020595ontologyList'
	 */

    [Bindable(event="propertyChange")]
    public function get ontologyList():ArrayCollection
    {
        return this._996020595ontologyList;
    }

    public function set ontologyList(value:ArrayCollection):void
    {
    	var oldValue:Object = this._996020595ontologyList;
        if (oldValue !== value)
        {
            this._996020595ontologyList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ontologyList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property template (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'template' moved to '_1321546630template'
	 */

    [Bindable(event="propertyChange")]
    private function get template():KefedModel
    {
        return this._1321546630template;
    }

    private function set template(value:KefedModel):void
    {
    	var oldValue:Object = this._1321546630template;
        if (oldValue !== value)
        {
            this._1321546630template = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "template", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experimentList (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'experimentList' moved to '_2056632891experimentList'
	 */

    [Bindable(event="propertyChange")]
    private function get experimentList():ArrayCollection
    {
        return this._2056632891experimentList;
    }

    private function set experimentList(value:ArrayCollection):void
    {
    	var oldValue:Object = this._2056632891experimentList;
        if (oldValue !== value)
        {
            this._2056632891experimentList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experimentList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experiment (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'experiment' moved to '_85337091experiment'
	 */

    [Bindable(event="propertyChange")]
    private function get experiment():KefedExperiment
    {
        return this._85337091experiment;
    }

    private function set experiment(value:KefedExperiment):void
    {
    	var oldValue:Object = this._85337091experiment;
        if (oldValue !== value)
        {
            this._85337091experiment = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experiment", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property designCountText (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'designCountText' moved to '_713383614designCountText'
	 */

    [Bindable(event="propertyChange")]
    private function get designCountText():String
    {
        return this._713383614designCountText;
    }

    private function set designCountText(value:String):void
    {
    	var oldValue:Object = this._713383614designCountText;
        if (oldValue !== value)
        {
            this._713383614designCountText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "designCountText", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experimentCountText (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'experimentCountText' moved to '_1133861727experimentCountText'
	 */

    [Bindable(event="propertyChange")]
    private function get experimentCountText():String
    {
        return this._1133861727experimentCountText;
    }

    private function set experimentCountText(value:String):void
    {
    	var oldValue:Object = this._1133861727experimentCountText;
        if (oldValue !== value)
        {
            this._1133861727experimentCountText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experimentCountText", oldValue, value));
        }
    }



}
