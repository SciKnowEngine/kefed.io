

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import com.kapit.diagram.view.DiagramView;
import edu.isi.bmkeg.kefed.elements.KefedObject;
import edu.isi.bmkeg.kefed.ui.*;

class BindableProperty
{
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

	/*
	 * generated bindable wrapper for property termLookupService (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'termLookupService' moved to '_1732742449termLookupService'
	 */

    [Bindable(event="propertyChange")]
    public function get termLookupService():OntologySearchInterface
    {
        return this._1732742449termLookupService;
    }

    public function set termLookupService(value:OntologySearchInterface):void
    {
    	var oldValue:Object = this._1732742449termLookupService;
        if (oldValue !== value)
        {
            this._1732742449termLookupService = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "termLookupService", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property monotonic (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'monotonic' moved to '_1431052118monotonic'
	 */

    [Bindable(event="propertyChange")]
    public function get monotonic():Boolean
    {
        return this._1431052118monotonic;
    }

    public function set monotonic(value:Boolean):void
    {
    	var oldValue:Object = this._1431052118monotonic;
        if (oldValue !== value)
        {
            this._1431052118monotonic = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "monotonic", oldValue, value));
        }
    }



}
