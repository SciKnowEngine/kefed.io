

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.elements.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property designUid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'designUid' moved to '_1661618610designUid'
	 */

    [Bindable(event="propertyChange")]
    public function get designUid():String
    {
        return this._1661618610designUid;
    }

    public function set designUid(value:String):void
    {
    	var oldValue:Object = this._1661618610designUid;
        if (oldValue !== value)
        {
            this._1661618610designUid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "designUid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property experimentData (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'experimentData' moved to '_2056386887experimentData'
	 */

    [Bindable(event="propertyChange")]
    public function get experimentData():Object
    {
        return this._2056386887experimentData;
    }

    public function set experimentData(value:Object):void
    {
    	var oldValue:Object = this._2056386887experimentData;
        if (oldValue !== value)
        {
            this._2056386887experimentData = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "experimentData", oldValue, value));
        }
    }



}
