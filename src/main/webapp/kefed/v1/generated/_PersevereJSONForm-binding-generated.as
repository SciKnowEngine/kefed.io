

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
import edu.isi.bmkeg.kefed.store.IModelStore;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.Label;
import edu.isi.bmkeg.kefed.ui.persevere.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import flash.events.*;
import mx.controls.TextArea;
import edu.isi.bmkeg.kefed.elements.KefedModel;
import edu.isi.bmkeg.kefed.elements.KefedObject;
import flash.filters.*;
import flash.profiler.*;
import edu.isi.bmkeg.kefed.store.IDataStore;

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
	 * generated bindable wrapper for property checkButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'checkButton' moved to '_282923610checkButton'
	 */

    [Bindable(event="propertyChange")]
    public function get checkButton():mx.controls.Button
    {
        return this._282923610checkButton;
    }

    public function set checkButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._282923610checkButton;
        if (oldValue !== value)
        {
            this._282923610checkButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "checkButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property codeBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'codeBox' moved to '_941814942codeBox'
	 */

    [Bindable(event="propertyChange")]
    public function get codeBox():mx.controls.TextArea
    {
        return this._941814942codeBox;
    }

    public function set codeBox(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._941814942codeBox;
        if (oldValue !== value)
        {
            this._941814942codeBox = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "codeBox", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property insertButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'insertButton' moved to '_268379979insertButton'
	 */

    [Bindable(event="propertyChange")]
    public function get insertButton():mx.controls.Button
    {
        return this._268379979insertButton;
    }

    public function set insertButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._268379979insertButton;
        if (oldValue !== value)
        {
            this._268379979insertButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "insertButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property message (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'message' moved to '_954925063message'
	 */

    [Bindable(event="propertyChange")]
    public function get message():mx.controls.Label
    {
        return this._954925063message;
    }

    public function set message(value:mx.controls.Label):void
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
	 * generated bindable wrapper for property saveButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'saveButton' moved to '_584254223saveButton'
	 */

    [Bindable(event="propertyChange")]
    public function get saveButton():mx.controls.Button
    {
        return this._584254223saveButton;
    }

    public function set saveButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._584254223saveButton;
        if (oldValue !== value)
        {
            this._584254223saveButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "saveButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property jsonCode (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'jsonCode' moved to '_1975428363jsonCode'
	 */

    [Bindable(event="propertyChange")]
    private function get jsonCode():String
    {
        return this._1975428363jsonCode;
    }

    private function set jsonCode(value:String):void
    {
    	var oldValue:Object = this._1975428363jsonCode;
        if (oldValue !== value)
        {
            this._1975428363jsonCode = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "jsonCode", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myObject (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myObject' moved to '_937972725myObject'
	 */

    [Bindable(event="propertyChange")]
    public function get myObject():KefedObject
    {
        return this._937972725myObject;
    }

    public function set myObject(value:KefedObject):void
    {
    	var oldValue:Object = this._937972725myObject;
        if (oldValue !== value)
        {
            this._937972725myObject = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myObject", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property model (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'model' moved to '_104069929model'
	 */

    [Bindable(event="propertyChange")]
    public function get model():KefedModel
    {
        return this._104069929model;
    }

    public function set model(value:KefedModel):void
    {
    	var oldValue:Object = this._104069929model;
        if (oldValue !== value)
        {
            this._104069929model = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "model", oldValue, value));
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

	/*
	 * generated bindable wrapper for property dataTable (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataTable' moved to '_374106556dataTable'
	 */

    [Bindable(event="propertyChange")]
    public function get dataTable():ArrayCollection
    {
        return this._374106556dataTable;
    }

    public function set dataTable(value:ArrayCollection):void
    {
    	var oldValue:Object = this._374106556dataTable;
        if (oldValue !== value)
        {
            this._374106556dataTable = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataTable", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelStore' moved to '_2093981496modelStore'
	 */

    [Bindable(event="propertyChange")]
    public function get modelStore():IModelStore
    {
        return this._2093981496modelStore;
    }

    public function set modelStore(value:IModelStore):void
    {
    	var oldValue:Object = this._2093981496modelStore;
        if (oldValue !== value)
        {
            this._2093981496modelStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataStore' moved to '_374451369dataStore'
	 */

    [Bindable(event="propertyChange")]
    public function get dataStore():IDataStore
    {
        return this._374451369dataStore;
    }

    public function set dataStore(value:IDataStore):void
    {
    	var oldValue:Object = this._374451369dataStore;
        if (oldValue !== value)
        {
            this._374451369dataStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property messageText (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'messageText' moved to '_873112108messageText'
	 */

    [Bindable(event="propertyChange")]
    private function get messageText():String
    {
        return this._873112108messageText;
    }

    private function set messageText(value:String):void
    {
    	var oldValue:Object = this._873112108messageText;
        if (oldValue !== value)
        {
            this._873112108messageText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "messageText", oldValue, value));
        }
    }



}
