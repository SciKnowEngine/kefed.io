

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import mx.controls.DataGrid;
import mx.controls.Button;
import mx.controls.TileList;
import edu.isi.bmkeg.kefed.elements.IKefedNamedObject;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property clearTermButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'clearTermButton' moved to '_1106324715clearTermButton'
	 */

    [Bindable(event="propertyChange")]
    public function get clearTermButton():mx.controls.Button
    {
        return this._1106324715clearTermButton;
    }

    public function set clearTermButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1106324715clearTermButton;
        if (oldValue !== value)
        {
            this._1106324715clearTermButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "clearTermButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property removeTermButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'removeTermButton' moved to '_1383180702removeTermButton'
	 */

    [Bindable(event="propertyChange")]
    public function get removeTermButton():mx.controls.Button
    {
        return this._1383180702removeTermButton;
    }

    public function set removeTermButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1383180702removeTermButton;
        if (oldValue !== value)
        {
            this._1383180702removeTermButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "removeTermButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property searchTermButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'searchTermButton' moved to '_255678842searchTermButton'
	 */

    [Bindable(event="propertyChange")]
    public function get searchTermButton():mx.controls.Button
    {
        return this._255678842searchTermButton;
    }

    public function set searchTermButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._255678842searchTermButton;
        if (oldValue !== value)
        {
            this._255678842searchTermButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchTermButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property termGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termGrid' moved to '_1182257710termGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get termGrid():mx.controls.TileList
    {
        return this._1182257710termGrid;
    }

    public function set termGrid(value:mx.controls.TileList):void
    {
    	var oldValue:Object = this._1182257710termGrid;
        if (oldValue !== value)
        {
            this._1182257710termGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property termList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termList' moved to '_1182117078termList'
	 */

    [Bindable(event="propertyChange")]
    public function get termList():mx.controls.DataGrid
    {
        return this._1182117078termList;
    }

    public function set termList(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._1182117078termList;
        if (oldValue !== value)
        {
            this._1182117078termList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termList", oldValue, value));
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
	 * generated bindable wrapper for property myObject (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myObject' moved to '_937972725myObject'
	 */

    [Bindable(event="propertyChange")]
    public function get myObject():IKefedNamedObject
    {
        return this._937972725myObject;
    }

    public function set myObject(value:IKefedNamedObject):void
    {
    	var oldValue:Object = this._937972725myObject;
        if (oldValue !== value)
        {
            this._937972725myObject = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myObject", oldValue, value));
        }
    }



}
