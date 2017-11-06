

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
import mx.controls.Text;
import flash.events.*;
import mx.controls.TextArea;
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
	 * generated bindable wrapper for property license (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'license' moved to '_166757441license'
	 */

    [Bindable(event="propertyChange")]
    public function get license():mx.controls.TextArea
    {
        return this._166757441license;
    }

    public function set license(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._166757441license;
        if (oldValue !== value)
        {
            this._166757441license = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "license", oldValue, value));
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
	 * generated bindable wrapper for property noButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'noButton' moved to '_165416019noButton'
	 */

    [Bindable(event="propertyChange")]
    public function get noButton():mx.controls.Button
    {
        return this._165416019noButton;
    }

    public function set noButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._165416019noButton;
        if (oldValue !== value)
        {
            this._165416019noButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "noButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property yesButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'yesButton' moved to '_1256381689yesButton'
	 */

    [Bindable(event="propertyChange")]
    public function get yesButton():mx.controls.Button
    {
        return this._1256381689yesButton;
    }

    public function set yesButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1256381689yesButton;
        if (oldValue !== value)
        {
            this._1256381689yesButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "yesButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property licenseText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'licenseText' moved to '_641059570licenseText'
	 */

    [Bindable(event="propertyChange")]
    public function get licenseText():String
    {
        return this._641059570licenseText;
    }

    public function set licenseText(value:String):void
    {
    	var oldValue:Object = this._641059570licenseText;
        if (oldValue !== value)
        {
            this._641059570licenseText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "licenseText", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property licenseKey (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'licenseKey' moved to '_1406161314licenseKey'
	 */

    [Bindable(event="propertyChange")]
    public function get licenseKey():String
    {
        return this._1406161314licenseKey;
    }

    public function set licenseKey(value:String):void
    {
    	var oldValue:Object = this._1406161314licenseKey;
        if (oldValue !== value)
        {
            this._1406161314licenseKey = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "licenseKey", oldValue, value));
        }
    }



}
