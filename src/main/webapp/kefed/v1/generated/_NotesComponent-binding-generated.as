

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import edu.isi.bmkeg.kefed.elements.IKefedAnnotatedObject;
import mx.controls.TextArea;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property notesArea (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'notesArea' moved to '_1797933806notesArea'
	 */

    [Bindable(event="propertyChange")]
    public function get notesArea():mx.controls.TextArea
    {
        return this._1797933806notesArea;
    }

    public function set notesArea(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._1797933806notesArea;
        if (oldValue !== value)
        {
            this._1797933806notesArea = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "notesArea", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myObject (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myObject' moved to '_937972725myObject'
	 */

    [Bindable(event="propertyChange")]
    public function get myObject():IKefedAnnotatedObject
    {
        return this._937972725myObject;
    }

    public function set myObject(value:IKefedAnnotatedObject):void
    {
    	var oldValue:Object = this._937972725myObject;
        if (oldValue !== value)
        {
            this._937972725myObject = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myObject", oldValue, value));
        }
    }



}
