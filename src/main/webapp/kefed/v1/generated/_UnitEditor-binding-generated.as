

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
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.xml.*;
import flash.system.*;
import mx.controls.TextInput;
import flash.events.*;
import flash.ui.*;
import mx.binding.*;
import flash.filters.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;
import edu.isi.bmkeg.kefed.ui.DataGridComboBox;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property magnitude (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'magnitude' moved to '_2016783856magnitude'
	 */

    [Bindable(event="propertyChange")]
    public function get magnitude():mx.controls.TextInput
    {
        return this._2016783856magnitude;
    }

    public function set magnitude(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._2016783856magnitude;
        if (oldValue !== value)
        {
            this._2016783856magnitude = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "magnitude", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property units (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'units' moved to '_111433583units'
	 */

    [Bindable(event="propertyChange")]
    public function get units():edu.isi.bmkeg.kefed.ui.DataGridComboBox
    {
        return this._111433583units;
    }

    public function set units(value:edu.isi.bmkeg.kefed.ui.DataGridComboBox):void
    {
    	var oldValue:Object = this._111433583units;
        if (oldValue !== value)
        {
            this._111433583units = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "units", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedUnits (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedUnits' moved to '_344314201allowedUnits'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedUnits():ArrayCollection
    {
        return this._344314201allowedUnits;
    }

    public function set allowedUnits(value:ArrayCollection):void
    {
    	var oldValue:Object = this._344314201allowedUnits;
        if (oldValue !== value)
        {
            this._344314201allowedUnits = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedUnits", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowOtherUnits (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowOtherUnits' moved to '_323581336allowOtherUnits'
	 */

    [Bindable(event="propertyChange")]
    public function get allowOtherUnits():Boolean
    {
        return this._323581336allowOtherUnits;
    }

    public function set allowOtherUnits(value:Boolean):void
    {
    	var oldValue:Object = this._323581336allowOtherUnits;
        if (oldValue !== value)
        {
            this._323581336allowOtherUnits = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowOtherUnits", oldValue, value));
        }
    }



}
