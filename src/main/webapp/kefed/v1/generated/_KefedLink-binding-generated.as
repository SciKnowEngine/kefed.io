

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



}
