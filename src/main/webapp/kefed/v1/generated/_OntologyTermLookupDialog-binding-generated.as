

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.ontology.*;
import flash.media.*;
import flash.text.*;
import flash.external.*;
import flash.geom.*;
import mx.controls.RadioButtonGroup;
import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import flash.debugger.*;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.Label;
import edu.isi.bmkeg.kefed.elements.IKefedNamedObject;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.formatters.NumberFormatter;
import mx.controls.CheckBox;
import flash.events.*;
import mx.controls.TextArea;
import mx.containers.Panel;
import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid;
import flash.filters.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property dg (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dg' moved to '_3203dg'
	 */

    [Bindable(event="propertyChange")]
    public function get dg():edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid
    {
        return this._3203dg;
    }

    public function set dg(value:edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid):void
    {
    	var oldValue:Object = this._3203dg;
        if (oldValue !== value)
        {
            this._3203dg = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dg", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property elapsedTimeFormatter (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'elapsedTimeFormatter' moved to '_61766753elapsedTimeFormatter'
	 */

    [Bindable(event="propertyChange")]
    public function get elapsedTimeFormatter():mx.formatters.NumberFormatter
    {
        return this._61766753elapsedTimeFormatter;
    }

    public function set elapsedTimeFormatter(value:mx.formatters.NumberFormatter):void
    {
    	var oldValue:Object = this._61766753elapsedTimeFormatter;
        if (oldValue !== value)
        {
            this._61766753elapsedTimeFormatter = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "elapsedTimeFormatter", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property exactControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'exactControl' moved to '_1754080606exactControl'
	 */

    [Bindable(event="propertyChange")]
    public function get exactControl():mx.controls.RadioButtonGroup
    {
        return this._1754080606exactControl;
    }

    public function set exactControl(value:mx.controls.RadioButtonGroup):void
    {
    	var oldValue:Object = this._1754080606exactControl;
        if (oldValue !== value)
        {
            this._1754080606exactControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exactControl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property ontologyListLabel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ontologyListLabel' moved to '_240824423ontologyListLabel'
	 */

    [Bindable(event="propertyChange")]
    public function get ontologyListLabel():mx.controls.TextArea
    {
        return this._240824423ontologyListLabel;
    }

    public function set ontologyListLabel(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._240824423ontologyListLabel;
        if (oldValue !== value)
        {
            this._240824423ontologyListLabel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ontologyListLabel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property propControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'propControl' moved to '_1155683450propControl'
	 */

    [Bindable(event="propertyChange")]
    public function get propControl():mx.controls.CheckBox
    {
        return this._1155683450propControl;
    }

    public function set propControl(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._1155683450propControl;
        if (oldValue !== value)
        {
            this._1155683450propControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "propControl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property resultsPanel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'resultsPanel' moved to '_1069475758resultsPanel'
	 */

    [Bindable(event="propertyChange")]
    public function get resultsPanel():mx.containers.Panel
    {
        return this._1069475758resultsPanel;
    }

    public function set resultsPanel(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._1069475758resultsPanel;
        if (oldValue !== value)
        {
            this._1069475758resultsPanel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resultsPanel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property searchButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'searchButton' moved to '_365389062searchButton'
	 */

    [Bindable(event="propertyChange")]
    public function get searchButton():mx.controls.Button
    {
        return this._365389062searchButton;
    }

    public function set searchButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._365389062searchButton;
        if (oldValue !== value)
        {
            this._365389062searchButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property searchCount (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'searchCount' moved to '_565230521searchCount'
	 */

    [Bindable(event="propertyChange")]
    public function get searchCount():mx.controls.Label
    {
        return this._565230521searchCount;
    }

    public function set searchCount(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._565230521searchCount;
        if (oldValue !== value)
        {
            this._565230521searchCount = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchCount", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property searchInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'searchInput' moved to '_559723774searchInput'
	 */

    [Bindable(event="propertyChange")]
    public function get searchInput():mx.controls.TextInput
    {
        return this._559723774searchInput;
    }

    public function set searchInput(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._559723774searchInput;
        if (oldValue !== value)
        {
            this._559723774searchInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property searchTime (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'searchTime' moved to '_710469483searchTime'
	 */

    [Bindable(event="propertyChange")]
    public function get searchTime():mx.controls.Label
    {
        return this._710469483searchTime;
    }

    public function set searchTime(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._710469483searchTime;
        if (oldValue !== value)
        {
            this._710469483searchTime = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchTime", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property termListLabel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termListLabel' moved to '_1694915094termListLabel'
	 */

    [Bindable(event="propertyChange")]
    public function get termListLabel():mx.controls.TextArea
    {
        return this._1694915094termListLabel;
    }

    public function set termListLabel(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._1694915094termListLabel;
        if (oldValue !== value)
        {
            this._1694915094termListLabel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termListLabel", oldValue, value));
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
	 * generated bindable wrapper for property exact (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'exact' moved to '_96946943exact'
	 */

    [Bindable(event="propertyChange")]
    private function get exact():Boolean
    {
        return this._96946943exact;
    }

    private function set exact(value:Boolean):void
    {
    	var oldValue:Object = this._96946943exact;
        if (oldValue !== value)
        {
            this._96946943exact = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exact", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property prop (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'prop' moved to '_3449699prop'
	 */

    [Bindable(event="propertyChange")]
    private function get prop():Boolean
    {
        return this._3449699prop;
    }

    private function set prop(value:Boolean):void
    {
    	var oldValue:Object = this._3449699prop;
        if (oldValue !== value)
        {
            this._3449699prop = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "prop", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property kefedObj (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'kefedObj' moved to '_37789428kefedObj'
	 */

    [Bindable(event="propertyChange")]
    private function get kefedObj():IKefedNamedObject
    {
        return this._37789428kefedObj;
    }

    private function set kefedObj(value:IKefedNamedObject):void
    {
    	var oldValue:Object = this._37789428kefedObj;
        if (oldValue !== value)
        {
            this._37789428kefedObj = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kefedObj", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property currentSearchTerm (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'currentSearchTerm' moved to '_234152077currentSearchTerm'
	 */

    [Bindable(event="propertyChange")]
    private function get currentSearchTerm():String
    {
        return this._234152077currentSearchTerm;
    }

    private function set currentSearchTerm(value:String):void
    {
    	var oldValue:Object = this._234152077currentSearchTerm;
        if (oldValue !== value)
        {
            this._234152077currentSearchTerm = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "currentSearchTerm", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property currentSearchResults (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'currentSearchResults' moved to '_1176100811currentSearchResults'
	 */

    [Bindable(event="propertyChange")]
    private function get currentSearchResults():ArrayCollection
    {
        return this._1176100811currentSearchResults;
    }

    private function set currentSearchResults(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1176100811currentSearchResults;
        if (oldValue !== value)
        {
            this._1176100811currentSearchResults = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "currentSearchResults", oldValue, value));
        }
    }



}
