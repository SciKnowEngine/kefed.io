

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.ontology.sparql.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property endpointUrl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'endpointUrl' moved to '_1135817830endpointUrl'
	 */

    [Bindable(event="propertyChange")]
    public function get endpointUrl():String
    {
        return this._1135817830endpointUrl;
    }

    public function set endpointUrl(value:String):void
    {
    	var oldValue:Object = this._1135817830endpointUrl;
        if (oldValue !== value)
        {
            this._1135817830endpointUrl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "endpointUrl", oldValue, value));
        }
    }



}
