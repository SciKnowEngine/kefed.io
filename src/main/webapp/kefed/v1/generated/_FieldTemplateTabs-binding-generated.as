

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
import flash.accessibility.*;
import mx.containers.TabNavigator;
import flash.printing.*;
import flash.debugger.*;
import flash.display.*;
import mx.styles.*;
import flash.errors.*;
import flash.net.*;
import flash.xml.*;
import flash.system.*;
import mx.controls.TextInput;
import flash.events.*;
import edu.isi.bmkeg.kefed.elements.KefedFieldTemplate;
import flash.ui.*;
import mx.binding.*;
import flash.filters.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property tn (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'tn' moved to '_3706tn'
	 */

    [Bindable(event="propertyChange")]
    public function get tn():mx.containers.TabNavigator
    {
        return this._3706tn;
    }

    public function set tn(value:mx.containers.TabNavigator):void
    {
    	var oldValue:Object = this._3706tn;
        if (oldValue !== value)
        {
            this._3706tn = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tn", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property variableDataNameControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'variableDataNameControl' moved to '_336652332variableDataNameControl'
	 */

    [Bindable(event="propertyChange")]
    public function get variableDataNameControl():mx.controls.TextInput
    {
        return this._336652332variableDataNameControl;
    }

    public function set variableDataNameControl(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._336652332variableDataNameControl;
        if (oldValue !== value)
        {
            this._336652332variableDataNameControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "variableDataNameControl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myObject (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myObject' moved to '_937972725myObject'
	 */

    [Bindable(event="propertyChange")]
    public function get myObject():KefedFieldTemplate
    {
        return this._937972725myObject;
    }

    public function set myObject(value:KefedFieldTemplate):void
    {
    	var oldValue:Object = this._937972725myObject;
        if (oldValue !== value)
        {
            this._937972725myObject = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myObject", oldValue, value));
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
	 * generated bindable wrapper for property monotonic (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'monotonic' moved to '_1431052118monotonic'
	 */

    [Bindable(event="propertyChange")]
    public function get monotonic():Boolean
    {
        return this._1431052118monotonic;
    }

    public function set monotonic(value:Boolean):void
    {
    	var oldValue:Object = this._1431052118monotonic;
        if (oldValue !== value)
        {
            this._1431052118monotonic = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "monotonic", oldValue, value));
        }
    }



}
