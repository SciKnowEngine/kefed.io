

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.controls.Text;
import mx.controls.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property cancelButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'cancelButton' moved to '_1990131276cancelButton'
	 */

    [Bindable(event="propertyChange")]
    public function get cancelButton():mx.controls.Button
    {
        return this._1990131276cancelButton;
    }

    public function set cancelButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1990131276cancelButton;
        if (oldValue !== value)
        {
            this._1990131276cancelButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cancelButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property message (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'message' moved to '_954925063message'
	 */

    [Bindable(event="propertyChange")]
    public function get message():mx.controls.Text
    {
        return this._954925063message;
    }

    public function set message(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._954925063message;
        if (oldValue !== value)
        {
            this._954925063message = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "message", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property okButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'okButton' moved to '_1641788370okButton'
	 */

    [Bindable(event="propertyChange")]
    public function get okButton():mx.controls.Button
    {
        return this._1641788370okButton;
    }

    public function set okButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1641788370okButton;
        if (oldValue !== value)
        {
            this._1641788370okButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "okButton", oldValue, value));
        }
    }



}
