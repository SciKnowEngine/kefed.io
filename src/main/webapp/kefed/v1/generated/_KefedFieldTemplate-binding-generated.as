

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.elements.*;
import mx.collections.ArrayCollection;

class BindableProperty
    implements flash.events.IEventDispatcher
{
	/*
	 * generated bindable wrapper for property uid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'uid' moved to '_115792uid'
	 */

    [Bindable(event="propertyChange")]
    public function get uid():String
    {
        return this._115792uid;
    }

    public function set uid(value:String):void
    {
    	var oldValue:Object = this._115792uid;
        if (oldValue !== value)
        {
            this._115792uid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property valueType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'valueType' moved to '_765692853valueType'
	 */

    [Bindable(event="propertyChange")]
    public function get valueType():KefedBaseValueTemplate
    {
        return this._765692853valueType;
    }

    public function set valueType(value:KefedBaseValueTemplate):void
    {
    	var oldValue:Object = this._765692853valueType;
        if (oldValue !== value)
        {
            this._765692853valueType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valueType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property nameValue (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'nameValue' moved to '_1225000358nameValue'
	 */

    [Bindable(event="propertyChange")]
    public function set nameValue(value:String):void
    {
    	var oldValue:Object = this.nameValue;
        if (oldValue !== value)
        {
            this._1225000358nameValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property ontologyIds (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'ontologyIds' moved to '_724869399ontologyIds'
	 */

    [Bindable(event="propertyChange")]
    public function set ontologyIds(value:ArrayCollection):void
    {
    	var oldValue:Object = this.ontologyIds;
        if (oldValue !== value)
        {
            this._724869399ontologyIds = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ontologyIds", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property notes (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'notes' moved to '_105008833notes'
	 */

    [Bindable(event="propertyChange")]
    public function set notes(value:String):void
    {
    	var oldValue:Object = this.notes;
        if (oldValue !== value)
        {
            this._105008833notes = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notes", oldValue, value));
        }
    }


    //    IEventDispatcher implementation
    //
    private var _bindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher(flash.events.IEventDispatcher(this));

	/**
	 * @inheritDoc
	 */
    public function addEventListener(type:String, listener:Function,
                                     useCapture:Boolean = false,
                                     priority:int = 0,
                                     weakRef:Boolean = false):void
    {
        _bindingEventDispatcher.addEventListener(type, listener, useCapture,
                                                 priority, weakRef);
    }

	/**
	 * @inheritDoc
	 */
    public function dispatchEvent(event:flash.events.Event):Boolean
    {
        return _bindingEventDispatcher.dispatchEvent(event);
    }

	/**
	 * @inheritDoc
	 */
    public function hasEventListener(type:String):Boolean
    {
        return _bindingEventDispatcher.hasEventListener(type);
    }

	/**
	 * @inheritDoc
	 */
    public function removeEventListener(type:String,
                                        listener:Function,
                                        useCapture:Boolean = false):void
    {
        _bindingEventDispatcher.removeEventListener(type, listener, useCapture);
    }

	/**
	 * @inheritDoc
	 */
    public function willTrigger(type:String):Boolean
    {
        return _bindingEventDispatcher.willTrigger(type);
    }

}
