

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import com.kapit.diagram.view.DiagramView;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property diagram (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'diagram' moved to '_1654878419diagram'
	 */

    [Bindable(event="propertyChange")]
    public function get diagram():DiagramView
    {
        return this._1654878419diagram;
    }

    public function set diagram(value:DiagramView):void
    {
    	var oldValue:Object = this._1654878419diagram;
        if (oldValue !== value)
        {
            this._1654878419diagram = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "diagram", oldValue, value));
        }
    }



}
