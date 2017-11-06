

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
	 * generated bindable wrapper for property source (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'source' moved to '_896505829source'
	 */

    [Bindable(event="propertyChange")]
    public function get source():String
    {
        return this._896505829source;
    }

    public function set source(value:String):void
    {
    	var oldValue:Object = this._896505829source;
        if (oldValue !== value)
        {
            this._896505829source = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "source", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property citeKey (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'citeKey' moved to '_784824712citeKey'
	 */

    [Bindable(event="propertyChange")]
    public function get citeKey():String
    {
        return this._784824712citeKey;
    }

    public function set citeKey(value:String):void
    {
    	var oldValue:Object = this._784824712citeKey;
        if (oldValue !== value)
        {
            this._784824712citeKey = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "citeKey", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelName' moved to '_2010829484modelName'
	 */

    [Bindable(event="propertyChange")]
    public function get modelName():String
    {
        return this._2010829484modelName;
    }

    public function set modelName(value:String):void
    {
    	var oldValue:Object = this._2010829484modelName;
        if (oldValue !== value)
        {
            this._2010829484modelName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelName", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property description (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'description' moved to '_1724546052description'
	 */

    [Bindable(event="propertyChange")]
    public function get description():String
    {
        return this._1724546052description;
    }

    public function set description(value:String):void
    {
    	var oldValue:Object = this._1724546052description;
        if (oldValue !== value)
        {
            this._1724546052description = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dateTime (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dateTime' moved to '_1792749467dateTime'
	 */

    [Bindable(event="propertyChange")]
    public function get dateTime():String
    {
        return this._1792749467dateTime;
    }

    public function set dateTime(value:String):void
    {
    	var oldValue:Object = this._1792749467dateTime;
        if (oldValue !== value)
        {
            this._1792749467dateTime = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dateTime", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property _bNodes (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_bNodes' moved to '_1294601358_bNodes'
	 */

    [Bindable(event="propertyChange")]
    private function get _bNodes():ArrayCollection
    {
        return this._1294601358_bNodes;
    }

    private function set _bNodes(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1294601358_bNodes;
        if (oldValue !== value)
        {
            this._1294601358_bNodes = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_bNodes", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property _bEdges (private)
	 * - generated setter
	 * - generated getter
	 * - original private var '_bEdges' moved to '_1285964851_bEdges'
	 */

    [Bindable(event="propertyChange")]
    private function get _bEdges():ArrayCollection
    {
        return this._1285964851_bEdges;
    }

    private function set _bEdges(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1285964851_bEdges;
        if (oldValue !== value)
        {
            this._1285964851_bEdges = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_bEdges", oldValue, value));
        }
    }



}
