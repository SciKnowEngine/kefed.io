

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
import flash.debugger.*;
import mx.containers.HBox;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.TileList;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import flash.events.*;
import flash.filters.*;
import edu.isi.bmkeg.kefed.ui.*;
import flash.profiler.*;
import edu.isi.bmkeg.kefed.ui.DataGridComboBox;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property addRegionButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'addRegionButton' moved to '_41216377addRegionButton'
	 */

    [Bindable(event="propertyChange")]
    public function get addRegionButton():mx.controls.Button
    {
        return this._41216377addRegionButton;
    }

    public function set addRegionButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._41216377addRegionButton;
        if (oldValue !== value)
        {
            this._41216377addRegionButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addRegionButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property addRegions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'addRegions' moved to '_1300623330addRegions'
	 */

    [Bindable(event="propertyChange")]
    public function get addRegions():mx.containers.HBox
    {
        return this._1300623330addRegions;
    }

    public function set addRegions(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._1300623330addRegions;
        if (oldValue !== value)
        {
            this._1300623330addRegions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "addRegions", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedRelations (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedRelations' moved to '_1253228847allowedRelations'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedRelations():mx.collections.ArrayCollection
    {
        return this._1253228847allowedRelations;
    }

    public function set allowedRelations(value:mx.collections.ArrayCollection):void
    {
    	var oldValue:Object = this._1253228847allowedRelations;
        if (oldValue !== value)
        {
            this._1253228847allowedRelations = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedRelations", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property newRegion (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'newRegion' moved to '_638516044newRegion'
	 */

    [Bindable(event="propertyChange")]
    public function get newRegion():mx.controls.TextInput
    {
        return this._638516044newRegion;
    }

    public function set newRegion(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._638516044newRegion;
        if (oldValue !== value)
        {
            this._638516044newRegion = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "newRegion", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property regions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'regions' moved to '_1086109695regions'
	 */

    [Bindable(event="propertyChange")]
    public function get regions():mx.controls.TileList
    {
        return this._1086109695regions;
    }

    public function set regions(value:mx.controls.TileList):void
    {
    	var oldValue:Object = this._1086109695regions;
        if (oldValue !== value)
        {
            this._1086109695regions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "regions", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property relation (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'relation' moved to '_554436100relation'
	 */

    [Bindable(event="propertyChange")]
    public function get relation():edu.isi.bmkeg.kefed.ui.DataGridComboBox
    {
        return this._554436100relation;
    }

    public function set relation(value:edu.isi.bmkeg.kefed.ui.DataGridComboBox):void
    {
    	var oldValue:Object = this._554436100relation;
        if (oldValue !== value)
        {
            this._554436100relation = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "relation", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowedRegions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowedRegions' moved to '_1199153463allowedRegions'
	 */

    [Bindable(event="propertyChange")]
    public function get allowedRegions():ArrayCollection
    {
        return this._1199153463allowedRegions;
    }

    public function set allowedRegions(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1199153463allowedRegions;
        if (oldValue !== value)
        {
            this._1199153463allowedRegions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowedRegions", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property allowOtherRegions (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'allowOtherRegions' moved to '_351399752allowOtherRegions'
	 */

    [Bindable(event="propertyChange")]
    public function get allowOtherRegions():Boolean
    {
        return this._351399752allowOtherRegions;
    }

    public function set allowOtherRegions(value:Boolean):void
    {
    	var oldValue:Object = this._351399752allowOtherRegions;
        if (oldValue !== value)
        {
            this._351399752allowOtherRegions = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "allowOtherRegions", oldValue, value));
        }
    }



}
