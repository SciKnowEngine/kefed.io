

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.TextInput;
import mx.containers.TabNavigator;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property objectNameControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'objectNameControl' moved to '_74413971objectNameControl'
	 */

    [Bindable(event="propertyChange")]
    public function get objectNameControl():mx.controls.TextInput
    {
        return this._74413971objectNameControl;
    }

    public function set objectNameControl(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._74413971objectNameControl;
        if (oldValue !== value)
        {
            this._74413971objectNameControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectNameControl", oldValue, value));
        }
    }

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



}
