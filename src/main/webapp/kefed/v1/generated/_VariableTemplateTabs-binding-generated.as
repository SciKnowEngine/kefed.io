

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



}
