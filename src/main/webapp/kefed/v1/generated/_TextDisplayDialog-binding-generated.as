

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
import mx.controls.TextArea;
import flash.ui.*;
import mx.binding.*;
import flash.filters.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property content (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'content' moved to '_951530617content'
	 */

    [Bindable(event="propertyChange")]
    public function get content():mx.controls.TextArea
    {
        return this._951530617content;
    }

    public function set content(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._951530617content;
        if (oldValue !== value)
        {
            this._951530617content = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "content", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property displayText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'displayText' moved to '_1714331919displayText'
	 */

    [Bindable(event="propertyChange")]
    public function get displayText():String
    {
        return this._1714331919displayText;
    }

    public function set displayText(value:String):void
    {
    	var oldValue:Object = this._1714331919displayText;
        if (oldValue !== value)
        {
            this._1714331919displayText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "displayText", oldValue, value));
        }
    }



}
