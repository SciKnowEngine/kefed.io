

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
    implements flash.events.IEventDispatcher
{
	/*
	 * generated bindable wrapper for property nameValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'nameValue' moved to '_1225000358nameValue'
	 */

    [Bindable(event="propertyChange")]
    public function get nameValue():String
    {
        return this._1225000358nameValue;
    }

    public function set nameValue(value:String):void
    {
    	var oldValue:Object = this._1225000358nameValue;
        if (oldValue !== value)
        {
            this._1225000358nameValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property valueTypeName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'valueTypeName' moved to '_1421326986valueTypeName'
	 */

    [Bindable(event="propertyChange")]
    public function get valueTypeName():String
    {
        return this._1421326986valueTypeName;
    }

    public function set valueTypeName(value:String):void
    {
    	var oldValue:Object = this._1421326986valueTypeName;
        if (oldValue !== value)
        {
            this._1421326986valueTypeName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valueTypeName", oldValue, value));
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
	 * generated bindable wrapper for property termLookupFunction (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termLookupFunction' moved to '_2121288446termLookupFunction'
	 */

    [Bindable(event="propertyChange")]
    public function get termLookupFunction():String
    {
        return this._2121288446termLookupFunction;
    }

    public function set termLookupFunction(value:String):void
    {
    	var oldValue:Object = this._2121288446termLookupFunction;
        if (oldValue !== value)
        {
            this._2121288446termLookupFunction = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termLookupFunction", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property minimumValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'minimumValue' moved to '_1192487427minimumValue'
	 */

    [Bindable(event="propertyChange")]
    public function get minimumValue():String
    {
        return this._1192487427minimumValue;
    }

    public function set minimumValue(value:String):void
    {
    	var oldValue:Object = this._1192487427minimumValue;
        if (oldValue !== value)
        {
            this._1192487427minimumValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minimumValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property maximumValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'maximumValue' moved to '_718061361maximumValue'
	 */

    [Bindable(event="propertyChange")]
    public function get maximumValue():String
    {
        return this._718061361maximumValue;
    }

    public function set maximumValue(value:String):void
    {
    	var oldValue:Object = this._718061361maximumValue;
        if (oldValue !== value)
        {
            this._718061361maximumValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maximumValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property orderedValues (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'orderedValues' moved to '_1497056273orderedValues'
	 */

    [Bindable(event="propertyChange")]
    public function get orderedValues():Boolean
    {
        return this._1497056273orderedValues;
    }

    public function set orderedValues(value:Boolean):void
    {
    	var oldValue:Object = this._1497056273orderedValues;
        if (oldValue !== value)
        {
            this._1497056273orderedValues = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "orderedValues", oldValue, value));
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
	 * generated bindable wrapper for property allowedPatterns (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedPatterns' moved to '_455394475allowedPatterns'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedPatterns():ArrayCollection
    {
        return this._455394475allowedPatterns;
    }

    public function set allowedPatterns(value:ArrayCollection):void
    {
    	var oldValue:Object = this._455394475allowedPatterns;
        if (oldValue !== value)
        {
            this._455394475allowedPatterns = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedPatterns", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowFreeValueInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowFreeValueInput' moved to '_632581134allowFreeValueInput'
	 */

    [Bindable(event="propertyChange")]
    public function get allowFreeValueInput():Boolean
    {
        return this._632581134allowFreeValueInput;
    }

    public function set allowFreeValueInput(value:Boolean):void
    {
    	var oldValue:Object = this._632581134allowFreeValueInput;
        if (oldValue !== value)
        {
            this._632581134allowFreeValueInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowFreeValueInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowFreeUnitInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowFreeUnitInput' moved to '_1091809583allowFreeUnitInput'
	 */

    [Bindable(event="propertyChange")]
    public function get allowFreeUnitInput():Boolean
    {
        return this._1091809583allowFreeUnitInput;
    }

    public function set allowFreeUnitInput(value:Boolean):void
    {
    	var oldValue:Object = this._1091809583allowFreeUnitInput;
        if (oldValue !== value)
        {
            this._1091809583allowFreeUnitInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowFreeUnitInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowFreePatternInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowFreePatternInput' moved to '_522349553allowFreePatternInput'
	 */

    [Bindable(event="propertyChange")]
    public function get allowFreePatternInput():Boolean
    {
        return this._522349553allowFreePatternInput;
    }

    public function set allowFreePatternInput(value:Boolean):void
    {
    	var oldValue:Object = this._522349553allowFreePatternInput;
        if (oldValue !== value)
        {
            this._522349553allowFreePatternInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowFreePatternInput", oldValue, value));
        }
    }


    //    IEventDispatcher implementation
    //
    private var _bindingEventDispatcher:flash.events.EventDispatcher =
        new flash.events.EventDispatcher(flash.events.IEventDispatcher(this));

	/**
	 * @inheritDoc
	 */
    public function addEventListener(type:String, listener:Function,
                                     useCapture:Boolean = false,
                                     priority:int = 0,
                                     weakRef:Boolean = false):void
    {
        _bindingEventDispatcher.addEventListener(type, listener, useCapture,
                                                 priority, weakRef);
    }

	/**
	 * @inheritDoc
	 */
    public function dispatchEvent(event:flash.events.Event):Boolean
    {
        return _bindingEventDispatcher.dispatchEvent(event);
    }

	/**
	 * @inheritDoc
	 */
    public function hasEventListener(type:String):Boolean
    {
        return _bindingEventDispatcher.hasEventListener(type);
    }

	/**
	 * @inheritDoc
	 */
    public function removeEventListener(type:String,
                                        listener:Function,
                                        useCapture:Boolean = false):void
    {
        _bindingEventDispatcher.removeEventListener(type, listener, useCapture);
    }

	/**
	 * @inheritDoc
	 */
    public function willTrigger(type:String):Boolean
    {
        return _bindingEventDispatcher.willTrigger(type);
    }

}
