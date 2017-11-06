

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.elements.*;
import mx.collections.ArrayCollection;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property type (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'type' moved to '_3575610type'
	 */

    [Bindable(event="propertyChange")]
    public function get type():String
    {
        return this._3575610type;
    }

    public function set type(value:String):void
    {
    	var oldValue:Object = this._3575610type;
        if (oldValue !== value)
        {
            this._3575610type = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "type", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property pos (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'pos' moved to '_111188pos'
	 */

    [Bindable(event="propertyChange")]
    public function get pos():Number
    {
        return this._111188pos;
    }

    public function set pos(value:Number):void
    {
    	var oldValue:Object = this._111188pos;
        if (oldValue !== value)
        {
            this._111188pos = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pos", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property spriteid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'spriteid' moved to '_1754828128spriteid'
	 */

    [Bindable(event="propertyChange")]
    public function get spriteid():String
    {
        return this._1754828128spriteid;
    }

    public function set spriteid(value:String):void
    {
    	var oldValue:Object = this._1754828128spriteid;
        if (oldValue !== value)
        {
            this._1754828128spriteid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spriteid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property valueDomain (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'valueDomain' moved to '_1858815595valueDomain'
	 */

    [Bindable(event="propertyChange")]
    public function get valueDomain():String
    {
        return this._1858815595valueDomain;
    }

    public function set valueDomain(value:String):void
    {
    	var oldValue:Object = this._1858815595valueDomain;
        if (oldValue !== value)
        {
            this._1858815595valueDomain = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valueDomain", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property did (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'did' moved to '_99455did'
	 */

    [Bindable(event="propertyChange")]
    public function get did():String
    {
        return this._99455did;
    }

    public function set did(value:String):void
    {
    	var oldValue:Object = this._99455did;
        if (oldValue !== value)
        {
            this._99455did = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "did", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property nameValue (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'nameValue' moved to '_1225000358nameValue'
	 */

    [Bindable(event="propertyChange")]
    public function set nameValue(value:String):void
    {
    	var oldValue:Object = this.nameValue;
        if (oldValue !== value)
        {
            this._1225000358nameValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property ontologyIds (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'ontologyIds' moved to '_724869399ontologyIds'
	 */

    [Bindable(event="propertyChange")]
    public function set ontologyIds(value:ArrayCollection):void
    {
    	var oldValue:Object = this.ontologyIds;
        if (oldValue !== value)
        {
            this._724869399ontologyIds = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ontologyIds", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property notes (public)
	 * - generated setter
	 * - original getter left as-is
	 * - original public setter 'notes' moved to '_105008833notes'
	 */

    [Bindable(event="propertyChange")]
    public function set notes(value:String):void
    {
    	var oldValue:Object = this.notes;
        if (oldValue !== value)
        {
            this._105008833notes = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notes", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property valueType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'valueType' moved to '_765692853valueType'
	 */

    [Bindable(event="propertyChange")]
    public function get valueType():KefedFullValueTemplate
    {
        return this._765692853valueType;
    }

    public function set valueType(value:KefedFullValueTemplate):void
    {
    	var oldValue:Object = this._765692853valueType;
        if (oldValue !== value)
        {
            this._765692853valueType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valueType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property uid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'uid' moved to '_115792uid'
	 */

    [Bindable(event="propertyChange")]
    public function get uid():String
    {
        return this._115792uid;
    }

    public function set uid(value:String):void
    {
    	var oldValue:Object = this._115792uid;
        if (oldValue !== value)
        {
            this._115792uid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "uid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property compositions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'compositions' moved to '_236835831compositions'
	 */

    [Bindable(event="propertyChange")]
    public function get compositions():Number
    {
        return this._236835831compositions;
    }

    public function set compositions(value:Number):void
    {
    	var oldValue:Object = this._236835831compositions;
        if (oldValue !== value)
        {
            this._236835831compositions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "compositions", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property master (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'master' moved to '_1081267614master'
	 */

    [Bindable(event="propertyChange")]
    public function get master():String
    {
        return this._1081267614master;
    }

    public function set master(value:String):void
    {
    	var oldValue:Object = this._1081267614master;
        if (oldValue !== value)
        {
            this._1081267614master = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "master", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property oldDataTable (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'oldDataTable' moved to '_195558435oldDataTable'
	 */

    [Bindable(event="propertyChange")]
    public function get oldDataTable():ArrayCollection
    {
        return this._195558435oldDataTable;
    }

    public function set oldDataTable(value:ArrayCollection):void
    {
    	var oldValue:Object = this._195558435oldDataTable;
        if (oldValue !== value)
        {
            this._195558435oldDataTable = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oldDataTable", oldValue, value));
        }
    }



}
