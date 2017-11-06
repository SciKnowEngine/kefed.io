

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.utils.ObjectProxy;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property dataItem (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataItem' moved to '_1788738013dataItem'
	 */

    [Bindable(event="propertyChange")]
    public function get dataItem():ObjectProxy
    {
        return this._1788738013dataItem;
    }

    public function set dataItem(value:ObjectProxy):void
    {
    	var oldValue:Object = this._1788738013dataItem;
        if (oldValue !== value)
        {
            this._1788738013dataItem = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataItem", oldValue, value));
        }
    }



}
