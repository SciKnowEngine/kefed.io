

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.collections.ArrayCollection;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property multipleSlotFields (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'multipleSlotFields' moved to '_1405449081multipleSlotFields'
	 */

    [Bindable(event="propertyChange")]
    public function get multipleSlotFields():ArrayCollection
    {
        return this._1405449081multipleSlotFields;
    }

    public function set multipleSlotFields(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1405449081multipleSlotFields;
        if (oldValue !== value)
        {
            this._1405449081multipleSlotFields = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "multipleSlotFields", oldValue, value));
        }
    }



}
