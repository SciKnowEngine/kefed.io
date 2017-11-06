

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
import flash.debugger.*;
import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.TileList;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.controls.CheckBox;
import flash.events.*;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property allowOtherValuesBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowOtherValuesBox' moved to '_768068546allowOtherValuesBox'
	 */

    [Bindable(event="propertyChange")]
    public function get allowOtherValuesBox():mx.controls.CheckBox
    {
        return this._768068546allowOtherValuesBox;
    }

    public function set allowOtherValuesBox(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._768068546allowOtherValuesBox;
        if (oldValue !== value)
        {
            this._768068546allowOtherValuesBox = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowOtherValuesBox", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedValuesAddButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedValuesAddButton' moved to '_1009002857allowedValuesAddButton'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedValuesAddButton():mx.controls.Button
    {
        return this._1009002857allowedValuesAddButton;
    }

    public function set allowedValuesAddButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1009002857allowedValuesAddButton;
        if (oldValue !== value)
        {
            this._1009002857allowedValuesAddButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedValuesAddButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedValuesList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedValuesList' moved to '_1801827160allowedValuesList'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedValuesList():mx.controls.TileList
    {
        return this._1801827160allowedValuesList;
    }

    public function set allowedValuesList(value:mx.controls.TileList):void
    {
    	var oldValue:Object = this._1801827160allowedValuesList;
        if (oldValue !== value)
        {
            this._1801827160allowedValuesList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedValuesList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedValuesRemoveButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedValuesRemoveButton' moved to '_1810270944allowedValuesRemoveButton'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedValuesRemoveButton():mx.controls.Button
    {
        return this._1810270944allowedValuesRemoveButton;
    }

    public function set allowedValuesRemoveButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1810270944allowedValuesRemoveButton;
        if (oldValue !== value)
        {
            this._1810270944allowedValuesRemoveButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedValuesRemoveButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property moveValueDownButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moveValueDownButton' moved to '_1227164340moveValueDownButton'
	 */

    [Bindable(event="propertyChange")]
    public function get moveValueDownButton():mx.controls.Button
    {
        return this._1227164340moveValueDownButton;
    }

    public function set moveValueDownButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1227164340moveValueDownButton;
        if (oldValue !== value)
        {
            this._1227164340moveValueDownButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moveValueDownButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property moveValueUpButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moveValueUpButton' moved to '_950344211moveValueUpButton'
	 */

    [Bindable(event="propertyChange")]
    public function get moveValueUpButton():mx.controls.Button
    {
        return this._950344211moveValueUpButton;
    }

    public function set moveValueUpButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._950344211moveValueUpButton;
        if (oldValue !== value)
        {
            this._950344211moveValueUpButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moveValueUpButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newValue' moved to '_1368456113newValue'
	 */

    [Bindable(event="propertyChange")]
    public function get newValue():mx.controls.TextInput
    {
        return this._1368456113newValue;
    }

    public function set newValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1368456113newValue;
        if (oldValue !== value)
        {
            this._1368456113newValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property orderedBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'orderedBox' moved to '_761436702orderedBox'
	 */

    [Bindable(event="propertyChange")]
    public function get orderedBox():mx.controls.CheckBox
    {
        return this._761436702orderedBox;
    }

    public function set orderedBox(value:mx.controls.CheckBox):void
    {
    	var oldValue:Object = this._761436702orderedBox;
        if (oldValue !== value)
        {
            this._761436702orderedBox = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orderedBox", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myType' moved to '_1060021498myType'
	 */

    [Bindable(event="propertyChange")]
    public function get myType():KefedBaseValueTemplate
    {
        return this._1060021498myType;
    }

    public function set myType(value:KefedBaseValueTemplate):void
    {
    	var oldValue:Object = this._1060021498myType;
        if (oldValue !== value)
        {
            this._1060021498myType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedValues (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedValues' moved to '_2067092246allowedValues'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedValues():ArrayCollection
    {
        return this._2067092246allowedValues;
    }

    public function set allowedValues(value:ArrayCollection):void
    {
    	var oldValue:Object = this._2067092246allowedValues;
        if (oldValue !== value)
        {
            this._2067092246allowedValues = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedValues", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowOtherValues (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowOtherValues' moved to '_1424373431allowOtherValues'
	 */

    [Bindable(event="propertyChange")]
    public function get allowOtherValues():Boolean
    {
        return this._1424373431allowOtherValues;
    }

    public function set allowOtherValues(value:Boolean):void
    {
    	var oldValue:Object = this._1424373431allowOtherValues;
        if (oldValue !== value)
        {
            this._1424373431allowOtherValues = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowOtherValues", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowOtherValuesFlagName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowOtherValuesFlagName' moved to '_389141376allowOtherValuesFlagName'
	 */

    [Bindable(event="propertyChange")]
    public function get allowOtherValuesFlagName():String
    {
        return this._389141376allowOtherValuesFlagName;
    }

    public function set allowOtherValuesFlagName(value:String):void
    {
    	var oldValue:Object = this._389141376allowOtherValuesFlagName;
        if (oldValue !== value)
        {
            this._389141376allowOtherValuesFlagName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowOtherValuesFlagName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property monotonic (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'monotonic' moved to '_1431052118monotonic'
	 */

    [Bindable(event="propertyChange")]
    public function get monotonic():Boolean
    {
        return this._1431052118monotonic;
    }

    public function set monotonic(value:Boolean):void
    {
    	var oldValue:Object = this._1431052118monotonic;
        if (oldValue !== value)
        {
            this._1431052118monotonic = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "monotonic", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property orderAllowed (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'orderAllowed' moved to '_21307782orderAllowed'
	 */

    [Bindable(event="propertyChange")]
    public function get orderAllowed():Boolean
    {
        return this._21307782orderAllowed;
    }

    public function set orderAllowed(value:Boolean):void
    {
    	var oldValue:Object = this._21307782orderAllowed;
        if (oldValue !== value)
        {
            this._21307782orderAllowed = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orderAllowed", oldValue, value));
        }
    }



}
