

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.media.*;
import flash.text.*;
import mx.controls.ComboBox;
import flash.external.*;
import flash.geom.*;
import flash.debugger.*;
import flash.display.*;
import flash.xml.*;
import mx.containers.FormItem;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import flash.events.*;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property Citation (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'Citation' moved to '_1378062585Citation'
	 */

    [Bindable(event="propertyChange")]
    public function get Citation():mx.controls.TextInput
    {
        return this._1378062585Citation;
    }

    public function set Citation(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1378062585Citation;
        if (oldValue !== value)
        {
            this._1378062585Citation = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Citation", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property Description (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'Description' moved to '_56677412Description'
	 */

    [Bindable(event="propertyChange")]
    public function get Description():mx.controls.TextInput
    {
        return this._56677412Description;
    }

    public function set Description(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._56677412Description;
        if (oldValue !== value)
        {
            this._56677412Description = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Description", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property Name (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'Name' moved to '_2420395Name'
	 */

    [Bindable(event="propertyChange")]
    public function get Name():mx.controls.TextInput
    {
        return this._2420395Name;
    }

    public function set Name(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._2420395Name;
        if (oldValue !== value)
        {
            this._2420395Name = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Name", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property Source (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'Source' moved to '_1812638661Source'
	 */

    [Bindable(event="propertyChange")]
    public function get Source():mx.controls.TextInput
    {
        return this._1812638661Source;
    }

    public function set Source(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1812638661Source;
        if (oldValue !== value)
        {
            this._1812638661Source = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Source", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property Type (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'Type' moved to '_2622298Type'
	 */

    [Bindable(event="propertyChange")]
    public function get Type():mx.controls.ComboBox
    {
        return this._2622298Type;
    }

    public function set Type(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._2622298Type;
        if (oldValue !== value)
        {
            this._2622298Type = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Type", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property TypeField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'TypeField' moved to '_1795050048TypeField'
	 */

    [Bindable(event="propertyChange")]
    public function get TypeField():mx.controls.TextInput
    {
        return this._1795050048TypeField;
    }

    public function set TypeField(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1795050048TypeField;
        if (oldValue !== value)
        {
            this._1795050048TypeField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypeField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property TypeFieldItem (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'TypeFieldItem' moved to '_768853235TypeFieldItem'
	 */

    [Bindable(event="propertyChange")]
    public function get TypeFieldItem():mx.containers.FormItem
    {
        return this._768853235TypeFieldItem;
    }

    public function set TypeFieldItem(value:mx.containers.FormItem):void
    {
    	var oldValue:Object = this._768853235TypeFieldItem;
        if (oldValue !== value)
        {
            this._768853235TypeFieldItem = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypeFieldItem", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property TypeFieldList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'TypeFieldList' moved to '_768932478TypeFieldList'
	 */

    [Bindable(event="propertyChange")]
    public function get TypeFieldList():mx.containers.FormItem
    {
        return this._768932478TypeFieldList;
    }

    public function set TypeFieldList(value:mx.containers.FormItem):void
    {
    	var oldValue:Object = this._768932478TypeFieldList;
        if (oldValue !== value)
        {
            this._768932478TypeFieldList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TypeFieldList", oldValue, value));
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
	 * generated bindable wrapper for property editable (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'editable' moved to '_1602416228editable'
	 */

    [Bindable(event="propertyChange")]
    public function get editable():Boolean
    {
        return this._1602416228editable;
    }

    public function set editable(value:Boolean):void
    {
    	var oldValue:Object = this._1602416228editable;
        if (oldValue !== value)
        {
            this._1602416228editable = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "editable", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property templateList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'templateList' moved to '_976214984templateList'
	 */

    [Bindable(event="propertyChange")]
    public function get templateList():ArrayCollection
    {
        return this._976214984templateList;
    }

    public function set templateList(value:ArrayCollection):void
    {
    	var oldValue:Object = this._976214984templateList;
        if (oldValue !== value)
        {
            this._976214984templateList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "templateList", oldValue, value));
        }
    }



}
