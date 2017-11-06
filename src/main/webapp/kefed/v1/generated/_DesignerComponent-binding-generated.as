

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.media.*;
import flash.text.*;
import flash.external.*;
import flash.geom.*;
import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import flash.debugger.*;
import mx.containers.Form;
import flash.display.*;
import flash.xml.*;
import com.kapit.diagram.view.DiagramView;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
import flash.accessibility.*;
import flash.printing.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.containers.ControlBar;
import mx.controls.DataGrid;
import flash.events.*;
import mx.containers.Panel;
import mx.controls.TextArea;
import edu.isi.bmkeg.kefed.elements.KefedModel;
import edu.isi.bmkeg.kefed.elements.KefedObject;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;
import mx.containers.Accordion;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property activeObjectForm (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'activeObjectForm' moved to '_1692088393activeObjectForm'
	 */

    [Bindable(event="propertyChange")]
    public function get activeObjectForm():mx.containers.Panel
    {
        return this._1692088393activeObjectForm;
    }

    public function set activeObjectForm(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._1692088393activeObjectForm;
        if (oldValue !== value)
        {
            this._1692088393activeObjectForm = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "activeObjectForm", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property citationField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'citationField' moved to '_437297581citationField'
	 */

    [Bindable(event="propertyChange")]
    public function get citationField():mx.controls.TextInput
    {
        return this._437297581citationField;
    }

    public function set citationField(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._437297581citationField;
        if (oldValue !== value)
        {
            this._437297581citationField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "citationField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property controlForm (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'controlForm' moved to '_1715671103controlForm'
	 */

    [Bindable(event="propertyChange")]
    public function get controlForm():mx.containers.ControlBar
    {
        return this._1715671103controlForm;
    }

    public function set controlForm(value:mx.containers.ControlBar):void
    {
    	var oldValue:Object = this._1715671103controlForm;
        if (oldValue !== value)
        {
            this._1715671103controlForm = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "controlForm", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property descriptionField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'descriptionField' moved to '_483740254descriptionField'
	 */

    [Bindable(event="propertyChange")]
    public function get descriptionField():mx.controls.TextArea
    {
        return this._483740254descriptionField;
    }

    public function set descriptionField(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._483740254descriptionField;
        if (oldValue !== value)
        {
            this._483740254descriptionField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descriptionField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property diagram (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'diagram' moved to '_1654878419diagram'
	 */

    [Bindable(event="propertyChange")]
    public function get diagram():com.kapit.diagram.view.DiagramView
    {
        return this._1654878419diagram;
    }

    public function set diagram(value:com.kapit.diagram.view.DiagramView):void
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
	 * generated bindable wrapper for property editpanel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'editpanel' moved to '_1850879430editpanel'
	 */

    [Bindable(event="propertyChange")]
    public function get editpanel():mx.containers.Accordion
    {
        return this._1850879430editpanel;
    }

    public function set editpanel(value:mx.containers.Accordion):void
    {
    	var oldValue:Object = this._1850879430editpanel;
        if (oldValue !== value)
        {
            this._1850879430editpanel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "editpanel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property elementGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'elementGrid' moved to '_673529954elementGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get elementGrid():mx.containers.Panel
    {
        return this._673529954elementGrid;
    }

    public function set elementGrid(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._673529954elementGrid;
        if (oldValue !== value)
        {
            this._673529954elementGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "elementGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property flatPanel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'flatPanel' moved to '_1140400629flatPanel'
	 */

    [Bindable(event="propertyChange")]
    public function get flatPanel():mx.containers.Panel
    {
        return this._1140400629flatPanel;
    }

    public function set flatPanel(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._1140400629flatPanel;
        if (oldValue !== value)
        {
            this._1140400629flatPanel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flatPanel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelDetails (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelDetails' moved to '_1418551001modelDetails'
	 */

    [Bindable(event="propertyChange")]
    public function get modelDetails():mx.containers.Panel
    {
        return this._1418551001modelDetails;
    }

    public function set modelDetails(value:mx.containers.Panel):void
    {
    	var oldValue:Object = this._1418551001modelDetails;
        if (oldValue !== value)
        {
            this._1418551001modelDetails = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelDetails", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelInfo (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelInfo' moved to '_2010966153modelInfo'
	 */

    [Bindable(event="propertyChange")]
    public function get modelInfo():mx.containers.Form
    {
        return this._2010966153modelInfo;
    }

    public function set modelInfo(value:mx.containers.Form):void
    {
    	var oldValue:Object = this._2010966153modelInfo;
        if (oldValue !== value)
        {
            this._2010966153modelInfo = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelInfo", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property nameField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'nameField' moved to '_1210455343nameField'
	 */

    [Bindable(event="propertyChange")]
    public function get nameField():mx.controls.TextInput
    {
        return this._1210455343nameField;
    }

    public function set nameField(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1210455343nameField;
        if (oldValue !== value)
        {
            this._1210455343nameField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property objectsGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'objectsGrid' moved to '_1260053894objectsGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get objectsGrid():mx.controls.DataGrid
    {
        return this._1260053894objectsGrid;
    }

    public function set objectsGrid(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._1260053894objectsGrid;
        if (oldValue !== value)
        {
            this._1260053894objectsGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "objectsGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property showPlButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showPlButton' moved to '_136554091showPlButton'
	 */

    [Bindable(event="propertyChange")]
    public function get showPlButton():mx.controls.Button
    {
        return this._136554091showPlButton;
    }

    public function set showPlButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._136554091showPlButton;
        if (oldValue !== value)
        {
            this._136554091showPlButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showPlButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property sourceField (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'sourceField' moved to '_108060257sourceField'
	 */

    [Bindable(event="propertyChange")]
    public function get sourceField():mx.controls.TextInput
    {
        return this._108060257sourceField;
    }

    public function set sourceField(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._108060257sourceField;
        if (oldValue !== value)
        {
            this._108060257sourceField = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sourceField", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomControl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomControl' moved to '_22115850zoomControl'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomControl():edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider
    {
        return this._22115850zoomControl;
    }

    public function set zoomControl(value:edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider):void
    {
    	var oldValue:Object = this._22115850zoomControl;
        if (oldValue !== value)
        {
            this._22115850zoomControl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomControl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myObjects (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myObjects' moved to '_987616712myObjects'
	 */

    [Bindable(event="propertyChange")]
    public function get myObjects():ArrayCollection
    {
        return this._987616712myObjects;
    }

    public function set myObjects(value:ArrayCollection):void
    {
    	var oldValue:Object = this._987616712myObjects;
        if (oldValue !== value)
        {
            this._987616712myObjects = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myObjects", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myLinks (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myLinks' moved to '_1491205485myLinks'
	 */

    [Bindable(event="propertyChange")]
    public function get myLinks():ArrayCollection
    {
        return this._1491205485myLinks;
    }

    public function set myLinks(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1491205485myLinks;
        if (oldValue !== value)
        {
            this._1491205485myLinks = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myLinks", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property graph (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'graph' moved to '_98615630graph'
	 */

    [Bindable(event="propertyChange")]
    public function get graph():KefedModel
    {
        return this._98615630graph;
    }

    public function set graph(value:KefedModel):void
    {
    	var oldValue:Object = this._98615630graph;
        if (oldValue !== value)
        {
            this._98615630graph = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "graph", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property zoomFactor (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'zoomFactor' moved to '_1035034878zoomFactor'
	 */

    [Bindable(event="propertyChange")]
    public function get zoomFactor():Number
    {
        return this._1035034878zoomFactor;
    }

    public function set zoomFactor(value:Number):void
    {
    	var oldValue:Object = this._1035034878zoomFactor;
        if (oldValue !== value)
        {
            this._1035034878zoomFactor = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "zoomFactor", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property saveAllowed (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'saveAllowed' moved to '_220683925saveAllowed'
	 */

    [Bindable(event="propertyChange")]
    public function get saveAllowed():Boolean
    {
        return this._220683925saveAllowed;
    }

    public function set saveAllowed(value:Boolean):void
    {
    	var oldValue:Object = this._220683925saveAllowed;
        if (oldValue !== value)
        {
            this._220683925saveAllowed = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "saveAllowed", oldValue, value));
        }
    }



}
