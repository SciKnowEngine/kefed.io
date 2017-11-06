

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
import flash.accessibility.*;
import flash.printing.*;
import flash.debugger.*;
import flash.display.*;
import mx.styles.*;
import flash.errors.*;
import flash.net.*;
import flash.xml.*;
import flash.system.*;
import mx.containers.FormItem;
import mx.controls.TextInput;
import flash.events.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.filters.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property OkButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'OkButton' moved to '_1577144242OkButton'
	 */

    [Bindable(event="propertyChange")]
    public function get OkButton():mx.controls.Button
    {
        return this._1577144242OkButton;
    }

    public function set OkButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1577144242OkButton;
        if (oldValue !== value)
        {
            this._1577144242OkButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "OkButton", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property formitem (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'formitem' moved to '_474318295formitem'
	 */

    [Bindable(event="propertyChange")]
    public function get formitem():mx.containers.FormItem
    {
        return this._474318295formitem;
    }

    public function set formitem(value:mx.containers.FormItem):void
    {
    	var oldValue:Object = this._474318295formitem;
        if (oldValue !== value)
        {
            this._474318295formitem = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formitem", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property input (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'input' moved to '_100358090input'
	 */

    [Bindable(event="propertyChange")]
    public function get input():mx.controls.TextInput
    {
        return this._100358090input;
    }

    public function set input(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._100358090input;
        if (oldValue !== value)
        {
            this._100358090input = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "input", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property text (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'text' moved to '_3556653text'
	 */

    [Bindable(event="propertyChange")]
    public function get text():String
    {
        return this._3556653text;
    }

    public function set text(value:String):void
    {
    	var oldValue:Object = this._3556653text;
        if (oldValue !== value)
        {
            this._3556653text = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "text", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property enterConfirms (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'enterConfirms' moved to '_677446827enterConfirms'
	 */

    [Bindable(event="propertyChange")]
    public function get enterConfirms():Boolean
    {
        return this._677446827enterConfirms;
    }

    public function set enterConfirms(value:Boolean):void
    {
    	var oldValue:Object = this._677446827enterConfirms;
        if (oldValue !== value)
        {
            this._677446827enterConfirms = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "enterConfirms", oldValue, value));
        }
    }



}
