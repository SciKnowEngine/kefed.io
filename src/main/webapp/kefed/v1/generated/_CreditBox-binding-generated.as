

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
import flash.events.*;
import flash.ui.*;
import mx.binding.*;
import flash.filters.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property componentName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'componentName' moved to '_1706247464componentName'
	 */

    [Bindable(event="propertyChange")]
    public function get componentName():String
    {
        return this._1706247464componentName;
    }

    public function set componentName(value:String):void
    {
    	var oldValue:Object = this._1706247464componentName;
        if (oldValue !== value)
        {
            this._1706247464componentName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "componentName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property additionalDeveloper1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'additionalDeveloper1' moved to '_312484142additionalDeveloper1'
	 */

    [Bindable(event="propertyChange")]
    public function get additionalDeveloper1():String
    {
        return this._312484142additionalDeveloper1;
    }

    public function set additionalDeveloper1(value:String):void
    {
    	var oldValue:Object = this._312484142additionalDeveloper1;
        if (oldValue !== value)
        {
            this._312484142additionalDeveloper1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "additionalDeveloper1", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property additionalDeveloper2 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'additionalDeveloper2' moved to '_312484143additionalDeveloper2'
	 */

    [Bindable(event="propertyChange")]
    public function get additionalDeveloper2():String
    {
        return this._312484143additionalDeveloper2;
    }

    public function set additionalDeveloper2(value:String):void
    {
    	var oldValue:Object = this._312484143additionalDeveloper2;
        if (oldValue !== value)
        {
            this._312484143additionalDeveloper2 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "additionalDeveloper2", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property htmlData (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'htmlData' moved to '_337666571htmlData'
	 */

    [Bindable(event="propertyChange")]
    public function get htmlData():String
    {
        return this._337666571htmlData;
    }

    public function set htmlData(value:String):void
    {
    	var oldValue:Object = this._337666571htmlData;
        if (oldValue !== value)
        {
            this._337666571htmlData = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "htmlData", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property errorMessage (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'errorMessage' moved to '_1203236063errorMessage'
	 */

    [Bindable(event="propertyChange")]
    public function get errorMessage():String
    {
        return this._1203236063errorMessage;
    }

    public function set errorMessage(value:String):void
    {
    	var oldValue:Object = this._1203236063errorMessage;
        if (oldValue !== value)
        {
            this._1203236063errorMessage = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "errorMessage", oldValue, value));
        }
    }



}
