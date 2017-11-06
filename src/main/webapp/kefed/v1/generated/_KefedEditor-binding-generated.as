

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
import edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm;
import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
import flash.debugger.*;
import edu.isi.bmkeg.kefed.store.IModelStore;
import mx.utils.ObjectProxy;
import flash.display.*;
import flash.xml.*;
import edu.isi.bmkeg.kefed.ui.SpreadsheetComponent;
import edu.isi.bmkeg.kefed.ui.CreditBox;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import edu.isi.bmkeg.kefed.ui.InventoryComponent;
import flash.system.*;
import flash.events.*;
import edu.isi.bmkeg.utils.powerloom.PowerLoom;
import edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity;
import flash.filters.*;
import flash.profiler.*;
import edu.isi.bmkeg.kefed.store.IDataStore;
import edu.isi.bmkeg.kefed.ui.DesignerComponent;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property configuration (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'configuration' moved to '_1932752118configuration'
	 */

    [Bindable(event="propertyChange")]
    public function get configuration():XML
    {
        return this._1932752118configuration;
    }

    public function set configuration(value:XML):void
    {
    	var oldValue:Object = this._1932752118configuration;
        if (oldValue !== value)
        {
            this._1932752118configuration = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "configuration", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property connectivity (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'connectivity' moved to '_1923312055connectivity'
	 */

    [Bindable(event="propertyChange")]
    public function get connectivity():edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity
    {
        return this._1923312055connectivity;
    }

    public function set connectivity(value:edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity):void
    {
    	var oldValue:Object = this._1923312055connectivity;
        if (oldValue !== value)
        {
            this._1923312055connectivity = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connectivity", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property designer (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'designer' moved to '_1023432427designer'
	 */

    [Bindable(event="propertyChange")]
    public function get designer():edu.isi.bmkeg.kefed.ui.DesignerComponent
    {
        return this._1023432427designer;
    }

    public function set designer(value:edu.isi.bmkeg.kefed.ui.DesignerComponent):void
    {
    	var oldValue:Object = this._1023432427designer;
        if (oldValue !== value)
        {
            this._1023432427designer = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "designer", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property information (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'information' moved to '_1968600364information'
	 */

    [Bindable(event="propertyChange")]
    public function get information():edu.isi.bmkeg.kefed.ui.CreditBox
    {
        return this._1968600364information;
    }

    public function set information(value:edu.isi.bmkeg.kefed.ui.CreditBox):void
    {
    	var oldValue:Object = this._1968600364information;
        if (oldValue !== value)
        {
            this._1968600364information = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "information", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property inventory (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'inventory' moved to '_2020599460inventory'
	 */

    [Bindable(event="propertyChange")]
    public function get inventory():edu.isi.bmkeg.kefed.ui.InventoryComponent
    {
        return this._2020599460inventory;
    }

    public function set inventory(value:edu.isi.bmkeg.kefed.ui.InventoryComponent):void
    {
    	var oldValue:Object = this._2020599460inventory;
        if (oldValue !== value)
        {
            this._2020599460inventory = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "inventory", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property json (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'json' moved to '_3271912json'
	 */

    [Bindable(event="propertyChange")]
    public function get json():edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm
    {
        return this._3271912json;
    }

    public function set json(value:edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm):void
    {
    	var oldValue:Object = this._3271912json;
        if (oldValue !== value)
        {
            this._3271912json = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "json", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property license (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'license' moved to '_166757441license'
	 */

    [Bindable(event="propertyChange")]
    public function get license():mx.utils.ObjectProxy
    {
        return this._166757441license;
    }

    public function set license(value:mx.utils.ObjectProxy):void
    {
    	var oldValue:Object = this._166757441license;
        if (oldValue !== value)
        {
            this._166757441license = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "license", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property powerloom (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'powerloom' moved to '_845890854powerloom'
	 */

    [Bindable(event="propertyChange")]
    public function get powerloom():edu.isi.bmkeg.utils.powerloom.PowerLoom
    {
        return this._845890854powerloom;
    }

    public function set powerloom(value:edu.isi.bmkeg.utils.powerloom.PowerLoom):void
    {
    	var oldValue:Object = this._845890854powerloom;
        if (oldValue !== value)
        {
            this._845890854powerloom = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "powerloom", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property spreadsheet (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'spreadsheet' moved to '_2120983604spreadsheet'
	 */

    [Bindable(event="propertyChange")]
    public function get spreadsheet():edu.isi.bmkeg.kefed.ui.SpreadsheetComponent
    {
        return this._2120983604spreadsheet;
    }

    public function set spreadsheet(value:edu.isi.bmkeg.kefed.ui.SpreadsheetComponent):void
    {
    	var oldValue:Object = this._2120983604spreadsheet;
        if (oldValue !== value)
        {
            this._2120983604spreadsheet = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "spreadsheet", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property serverUrl (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'serverUrl' moved to '_197446868serverUrl'
	 */

    [Bindable(event="propertyChange")]
    public function get serverUrl():String
    {
        return this._197446868serverUrl;
    }

    public function set serverUrl(value:String):void
    {
    	var oldValue:Object = this._197446868serverUrl;
        if (oldValue !== value)
        {
            this._197446868serverUrl = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "serverUrl", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property modelStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'modelStore' moved to '_2093981496modelStore'
	 */

    [Bindable(event="propertyChange")]
    public function get modelStore():IModelStore
    {
        return this._2093981496modelStore;
    }

    public function set modelStore(value:IModelStore):void
    {
    	var oldValue:Object = this._2093981496modelStore;
        if (oldValue !== value)
        {
            this._2093981496modelStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modelStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property schemaStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'schemaStore' moved to '_1021562944schemaStore'
	 */

    [Bindable(event="propertyChange")]
    public function get schemaStore():IModelStore
    {
        return this._1021562944schemaStore;
    }

    public function set schemaStore(value:IModelStore):void
    {
    	var oldValue:Object = this._1021562944schemaStore;
        if (oldValue !== value)
        {
            this._1021562944schemaStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataStore (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataStore' moved to '_374451369dataStore'
	 */

    [Bindable(event="propertyChange")]
    public function get dataStore():IDataStore
    {
        return this._374451369dataStore;
    }

    public function set dataStore(value:IDataStore):void
    {
    	var oldValue:Object = this._374451369dataStore;
        if (oldValue !== value)
        {
            this._374451369dataStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property jsonFormModelStore (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'jsonFormModelStore' moved to '_19962332jsonFormModelStore'
	 */

    [Bindable(event="propertyChange")]
    private function get jsonFormModelStore():IModelStore
    {
        return this._19962332jsonFormModelStore;
    }

    private function set jsonFormModelStore(value:IModelStore):void
    {
    	var oldValue:Object = this._19962332jsonFormModelStore;
        if (oldValue !== value)
        {
            this._19962332jsonFormModelStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "jsonFormModelStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property jsonFormDataStore (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'jsonFormDataStore' moved to '_27001109jsonFormDataStore'
	 */

    [Bindable(event="propertyChange")]
    private function get jsonFormDataStore():IDataStore
    {
        return this._27001109jsonFormDataStore;
    }

    private function set jsonFormDataStore(value:IDataStore):void
    {
    	var oldValue:Object = this._27001109jsonFormDataStore;
        if (oldValue !== value)
        {
            this._27001109jsonFormDataStore = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "jsonFormDataStore", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property termLookupService (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'termLookupService' moved to '_1732742449termLookupService'
	 */

    [Bindable(event="propertyChange")]
    private function get termLookupService():OntologySearchInterface
    {
        return this._1732742449termLookupService;
    }

    private function set termLookupService(value:OntologySearchInterface):void
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
	 * generated bindable wrapper for property ontologyList (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'ontologyList' moved to '_996020595ontologyList'
	 */

    [Bindable(event="propertyChange")]
    public function get ontologyList():ArrayCollection
    {
        return this._996020595ontologyList;
    }

    public function set ontologyList(value:ArrayCollection):void
    {
    	var oldValue:Object = this._996020595ontologyList;
        if (oldValue !== value)
        {
            this._996020595ontologyList = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ontologyList", oldValue, value));
        }
    }



}
