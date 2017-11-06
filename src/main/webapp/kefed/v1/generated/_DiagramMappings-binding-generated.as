

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
import flash.profiler.*;
import edu.isi.bmkeg.kefed.ui.kapit.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property diagramMappings (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'diagramMappings' moved to '_1141658456diagramMappings'
	 */

    [Bindable(event="propertyChange")]
    public function get diagramMappings():XML
    {
        return this._1141658456diagramMappings;
    }

    public function set diagramMappings(value:XML):void
    {
    	var oldValue:Object = this._1141658456diagramMappings;
        if (oldValue !== value)
        {
            this._1141658456diagramMappings = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "diagramMappings", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property svglib (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'svglib' moved to '_890463839svglib'
	 */

    [Bindable(event="propertyChange")]
    public function get svglib():XML
    {
        return this._890463839svglib;
    }

    public function set svglib(value:XML):void
    {
    	var oldValue:Object = this._890463839svglib;
        if (oldValue !== value)
        {
            this._890463839svglib = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "svglib", oldValue, value));
        }
    }



}
