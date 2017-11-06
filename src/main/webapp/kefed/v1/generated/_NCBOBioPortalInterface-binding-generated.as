

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.ontology.bioportal.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property oboOnly (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'oboOnly' moved to '_1655676216oboOnly'
	 */

    [Bindable(event="propertyChange")]
    public function get oboOnly():Boolean
    {
        return this._1655676216oboOnly;
    }

    public function set oboOnly(value:Boolean):void
    {
    	var oldValue:Object = this._1655676216oboOnly;
        if (oldValue !== value)
        {
            this._1655676216oboOnly = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oboOnly", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property apikey (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'apikey' moved to '_1411271163apikey'
	 */

    [Bindable(event="propertyChange")]
    public function get apikey():String
    {
        return this._1411271163apikey;
    }

    public function set apikey(value:String):void
    {
    	var oldValue:Object = this._1411271163apikey;
        if (oldValue !== value)
        {
            this._1411271163apikey = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "apikey", oldValue, value));
        }
    }



}
