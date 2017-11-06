

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.media.*;
import flash.text.*;
import mx.controls.ComboBox;
import flash.external.*;
import flash.geom.*;
import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import flash.debugger.*;
import mx.containers.HBox;
import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
import flash.display.*;
import flash.xml.*;
import edu.isi.bmkeg.kefed.ui.FieldTemplateTabs;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.controls.DataGrid;
import flash.events.*;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property addFieldButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'addFieldButton' moved to '_494518635addFieldButton'
	 */

    [Bindable(event="propertyChange")]
    public function get addFieldButton():mx.controls.Button
    {
        return this._494518635addFieldButton;
    }

    public function set addFieldButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._494518635addFieldButton;
        if (oldValue !== value)
        {
            this._494518635addFieldButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addFieldButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property fieldTypeForm (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fieldTypeForm' moved to '_1014542792fieldTypeForm'
	 */

    [Bindable(event="propertyChange")]
    public function get fieldTypeForm():edu.isi.bmkeg.kefed.ui.FieldTemplateTabs
    {
        return this._1014542792fieldTypeForm;
    }

    public function set fieldTypeForm(value:edu.isi.bmkeg.kefed.ui.FieldTemplateTabs):void
    {
    	var oldValue:Object = this._1014542792fieldTypeForm;
        if (oldValue !== value)
        {
            this._1014542792fieldTypeForm = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fieldTypeForm", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property maxDecimalValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'maxDecimalValue' moved to '_1173029852maxDecimalValue'
	 */

    [Bindable(event="propertyChange")]
    public function get maxDecimalValue():mx.controls.TextInput
    {
        return this._1173029852maxDecimalValue;
    }

    public function set maxDecimalValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1173029852maxDecimalValue;
        if (oldValue !== value)
        {
            this._1173029852maxDecimalValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxDecimalValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property maxIntegerValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'maxIntegerValue' moved to '_1928673879maxIntegerValue'
	 */

    [Bindable(event="propertyChange")]
    public function get maxIntegerValue():mx.controls.TextInput
    {
        return this._1928673879maxIntegerValue;
    }

    public function set maxIntegerValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1928673879maxIntegerValue;
        if (oldValue !== value)
        {
            this._1928673879maxIntegerValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxIntegerValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property maxUnitValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'maxUnitValue' moved to '_1904450231maxUnitValue'
	 */

    [Bindable(event="propertyChange")]
    public function get maxUnitValue():mx.controls.TextInput
    {
        return this._1904450231maxUnitValue;
    }

    public function set maxUnitValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1904450231maxUnitValue;
        if (oldValue !== value)
        {
            this._1904450231maxUnitValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "maxUnitValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property minDecimalValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'minDecimalValue' moved to '_2011498514minDecimalValue'
	 */

    [Bindable(event="propertyChange")]
    public function get minDecimalValue():mx.controls.TextInput
    {
        return this._2011498514minDecimalValue;
    }

    public function set minDecimalValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._2011498514minDecimalValue;
        if (oldValue !== value)
        {
            this._2011498514minDecimalValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minDecimalValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property minIntegerValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'minIntegerValue' moved to '_818234949minIntegerValue'
	 */

    [Bindable(event="propertyChange")]
    public function get minIntegerValue():mx.controls.TextInput
    {
        return this._818234949minIntegerValue;
    }

    public function set minIntegerValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._818234949minIntegerValue;
        if (oldValue !== value)
        {
            this._818234949minIntegerValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minIntegerValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property minUnitValue (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'minUnitValue' moved to '_1430024165minUnitValue'
	 */

    [Bindable(event="propertyChange")]
    public function get minUnitValue():mx.controls.TextInput
    {
        return this._1430024165minUnitValue;
    }

    public function set minUnitValue(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1430024165minUnitValue;
        if (oldValue !== value)
        {
            this._1430024165minUnitValue = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "minUnitValue", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property moveValueDownButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moveValueDownButton' moved to '_1227164340moveValueDownButton'
	 */

    [Bindable(event="propertyChange")]
    public function get moveValueDownButton():mx.controls.Button
    {
        return this._1227164340moveValueDownButton;
    }

    public function set moveValueDownButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1227164340moveValueDownButton;
        if (oldValue !== value)
        {
            this._1227164340moveValueDownButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moveValueDownButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property moveValueUpButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moveValueUpButton' moved to '_950344211moveValueUpButton'
	 */

    [Bindable(event="propertyChange")]
    public function get moveValueUpButton():mx.controls.Button
    {
        return this._950344211moveValueUpButton;
    }

    public function set moveValueUpButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._950344211moveValueUpButton;
        if (oldValue !== value)
        {
            this._950344211moveValueUpButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moveValueUpButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property multislotGrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'multislotGrid' moved to '_587548317multislotGrid'
	 */

    [Bindable(event="propertyChange")]
    public function get multislotGrid():mx.controls.DataGrid
    {
        return this._587548317multislotGrid;
    }

    public function set multislotGrid(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._587548317multislotGrid;
        if (oldValue !== value)
        {
            this._587548317multislotGrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "multislotGrid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property removeFieldButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'removeFieldButton' moved to '_1897956776removeFieldButton'
	 */

    [Bindable(event="propertyChange")]
    public function get removeFieldButton():mx.controls.Button
    {
        return this._1897956776removeFieldButton;
    }

    public function set removeFieldButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1897956776removeFieldButton;
        if (oldValue !== value)
        {
            this._1897956776removeFieldButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "removeFieldButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property typeItem (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'typeItem' moved to '_676638355typeItem'
	 */

    [Bindable(event="propertyChange")]
    public function get typeItem():mx.containers.HBox
    {
        return this._676638355typeItem;
    }

    public function set typeItem(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._676638355typeItem;
        if (oldValue !== value)
        {
            this._676638355typeItem = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeItem", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property typeList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'typeList' moved to '_676559112typeList'
	 */

    [Bindable(event="propertyChange")]
    public function get typeList():mx.controls.ComboBox
    {
        return this._676559112typeList;
    }

    public function set typeList(value:mx.controls.ComboBox):void
    {
    	var oldValue:Object = this._676559112typeList;
        if (oldValue !== value)
        {
            this._676559112typeList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeList", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property typeOptions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'typeOptions' moved to '_522331644typeOptions'
	 */

    [Bindable(event="propertyChange")]
    public function get typeOptions():mx.collections.ArrayCollection
    {
        return this._522331644typeOptions;
    }

    public function set typeOptions(value:mx.collections.ArrayCollection):void
    {
    	var oldValue:Object = this._522331644typeOptions;
        if (oldValue !== value)
        {
            this._522331644typeOptions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeOptions", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property myType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'myType' moved to '_1060021498myType'
	 */

    [Bindable(event="propertyChange")]
    public function get myType():KefedBaseValueTemplate
    {
        return this._1060021498myType;
    }

    public function set myType(value:KefedBaseValueTemplate):void
    {
    	var oldValue:Object = this._1060021498myType;
        if (oldValue !== value)
        {
            this._1060021498myType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "myType", oldValue, value));
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
