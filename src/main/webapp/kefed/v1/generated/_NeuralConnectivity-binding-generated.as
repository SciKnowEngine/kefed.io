

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import flash.media.*;
import flash.text.*;
import mx.containers.VDividedBox;
import flash.external.*;
import flash.geom.*;
import mx.rpc.http.mxml.HTTPService;
import flash.debugger.*;
import mx.containers.HBox;
import mx.rpc.soap.mxml.WebService;
import flash.display.*;
import flash.xml.*;
import mx.containers.VBox;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.Label;
import mx.styles.*;
import mx.collections.ArrayCollection;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.formatters.NumberFormatter;
import mx.controls.Text;
import mx.controls.DataGrid;
import flash.events.*;
import flash.filters.*;
import flash.profiler.*;
import mx.controls.AdvancedDataGrid;
import edu.isi.bmkeg.domains.neuralconnectivity.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property connectionDescription (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'connectionDescription' moved to '_1137530430connectionDescription'
	 */

    [Bindable(event="propertyChange")]
    public function get connectionDescription():mx.controls.Label
    {
        return this._1137530430connectionDescription;
    }

    public function set connectionDescription(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._1137530430connectionDescription;
        if (oldValue !== value)
        {
            this._1137530430connectionDescription = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connectionDescription", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property connectionMatrix (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'connectionMatrix' moved to '_679994431connectionMatrix'
	 */

    [Bindable(event="propertyChange")]
    public function get connectionMatrix():mx.controls.AdvancedDataGrid
    {
        return this._679994431connectionMatrix;
    }

    public function set connectionMatrix(value:mx.controls.AdvancedDataGrid):void
    {
    	var oldValue:Object = this._679994431connectionMatrix;
        if (oldValue !== value)
        {
            this._679994431connectionMatrix = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connectionMatrix", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property content (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'content' moved to '_951530617content'
	 */

    [Bindable(event="propertyChange")]
    public function get content():mx.containers.VDividedBox
    {
        return this._951530617content;
    }

    public function set content(value:mx.containers.VDividedBox):void
    {
    	var oldValue:Object = this._951530617content;
        if (oldValue !== value)
        {
            this._951530617content = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "content", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property elapsedTimeFormatter (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'elapsedTimeFormatter' moved to '_61766753elapsedTimeFormatter'
	 */

    [Bindable(event="propertyChange")]
    public function get elapsedTimeFormatter():mx.formatters.NumberFormatter
    {
        return this._61766753elapsedTimeFormatter;
    }

    public function set elapsedTimeFormatter(value:mx.formatters.NumberFormatter):void
    {
    	var oldValue:Object = this._61766753elapsedTimeFormatter;
        if (oldValue !== value)
        {
            this._61766753elapsedTimeFormatter = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "elapsedTimeFormatter", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property errorDetail (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'errorDetail' moved to '_1604308871errorDetail'
	 */

    [Bindable(event="propertyChange")]
    public function get errorDetail():mx.controls.Text
    {
        return this._1604308871errorDetail;
    }

    public function set errorDetail(value:mx.controls.Text):void
    {
    	var oldValue:Object = this._1604308871errorDetail;
        if (oldValue !== value)
        {
            this._1604308871errorDetail = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "errorDetail", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property errorType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'errorType' moved to '_329552226errorType'
	 */

    [Bindable(event="propertyChange")]
    public function get errorType():mx.controls.Label
    {
        return this._329552226errorType;
    }

    public function set errorType(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._329552226errorType;
        if (oldValue !== value)
        {
            this._329552226errorType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "errorType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'evidenceBox' moved to '_1548235764evidenceBox'
	 */

    [Bindable(event="propertyChange")]
    public function get evidenceBox():mx.containers.VBox
    {
        return this._1548235764evidenceBox;
    }

    public function set evidenceBox(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1548235764evidenceBox;
        if (oldValue !== value)
        {
            this._1548235764evidenceBox = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceBox", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceCount (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'evidenceCount' moved to '_1796808952evidenceCount'
	 */

    [Bindable(event="propertyChange")]
    public function get evidenceCount():mx.controls.Label
    {
        return this._1796808952evidenceCount;
    }

    public function set evidenceCount(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._1796808952evidenceCount;
        if (oldValue !== value)
        {
            this._1796808952evidenceCount = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceCount", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceFile (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'evidenceFile' moved to '_750781555evidenceFile'
	 */

    [Bindable(event="propertyChange")]
    public function get evidenceFile():mx.controls.DataGrid
    {
        return this._750781555evidenceFile;
    }

    public function set evidenceFile(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._750781555evidenceFile;
        if (oldValue !== value)
        {
            this._750781555evidenceFile = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceFile", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceTime (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'evidenceTime' moved to '_751198660evidenceTime'
	 */

    [Bindable(event="propertyChange")]
    public function get evidenceTime():mx.controls.Label
    {
        return this._751198660evidenceTime;
    }

    public function set evidenceTime(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._751198660evidenceTime;
        if (oldValue !== value)
        {
            this._751198660evidenceTime = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceTime", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceWS (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'evidenceWS' moved to '_1335529613evidenceWS'
	 */

    [Bindable(event="propertyChange")]
    public function get evidenceWS():mx.rpc.soap.mxml.WebService
    {
        return this._1335529613evidenceWS;
    }

    public function set evidenceWS(value:mx.rpc.soap.mxml.WebService):void
    {
    	var oldValue:Object = this._1335529613evidenceWS;
        if (oldValue !== value)
        {
            this._1335529613evidenceWS = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceWS", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property legend (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'legend' moved to '_1106574323legend'
	 */

    [Bindable(event="propertyChange")]
    public function get legend():mx.controls.Label
    {
        return this._1106574323legend;
    }

    public function set legend(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._1106574323legend;
        if (oldValue !== value)
        {
            this._1106574323legend = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "legend", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property libraryID (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'libraryID' moved to '_812772118libraryID'
	 */

    [Bindable(event="propertyChange")]
    public function get libraryID():mx.controls.Label
    {
        return this._812772118libraryID;
    }

    public function set libraryID(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._812772118libraryID;
        if (oldValue !== value)
        {
            this._812772118libraryID = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "libraryID", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property matrixBox (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'matrixBox' moved to '_1045416522matrixBox'
	 */

    [Bindable(event="propertyChange")]
    public function get matrixBox():mx.containers.VBox
    {
        return this._1045416522matrixBox;
    }

    public function set matrixBox(value:mx.containers.VBox):void
    {
    	var oldValue:Object = this._1045416522matrixBox;
        if (oldValue !== value)
        {
            this._1045416522matrixBox = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matrixBox", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property matrixData (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'matrixData' moved to '_1951780085matrixData'
	 */

    [Bindable(event="propertyChange")]
    public function get matrixData():XML
    {
        return this._1951780085matrixData;
    }

    public function set matrixData(value:XML):void
    {
    	var oldValue:Object = this._1951780085matrixData;
        if (oldValue !== value)
        {
            this._1951780085matrixData = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "matrixData", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property plainRPC (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'plainRPC' moved to '_1864734651plainRPC'
	 */

    [Bindable(event="propertyChange")]
    public function get plainRPC():mx.rpc.http.mxml.HTTPService
    {
        return this._1864734651plainRPC;
    }

    public function set plainRPC(value:mx.rpc.http.mxml.HTTPService):void
    {
    	var oldValue:Object = this._1864734651plainRPC;
        if (oldValue !== value)
        {
            this._1864734651plainRPC = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "plainRPC", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property pmidLabel (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'pmidLabel' moved to '_2051024380pmidLabel'
	 */

    [Bindable(event="propertyChange")]
    public function get pmidLabel():mx.controls.Label
    {
        return this._2051024380pmidLabel;
    }

    public function set pmidLabel(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._2051024380pmidLabel;
        if (oldValue !== value)
        {
            this._2051024380pmidLabel = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pmidLabel", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property pubid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'pubid' moved to '_107017432pubid'
	 */

    [Bindable(event="propertyChange")]
    public function get pubid():mx.containers.HBox
    {
        return this._107017432pubid;
    }

    public function set pubid(value:mx.containers.HBox):void
    {
    	var oldValue:Object = this._107017432pubid;
        if (oldValue !== value)
        {
            this._107017432pubid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pubid", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property plserver (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'plserver' moved to '_1918447553plserver'
	 */

    [Bindable(event="propertyChange")]
    public function get plserver():String
    {
        return this._1918447553plserver;
    }

    public function set plserver(value:String):void
    {
    	var oldValue:Object = this._1918447553plserver;
        if (oldValue !== value)
        {
            this._1918447553plserver = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "plserver", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property evidenceCollection (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'evidenceCollection' moved to '_1171888043evidenceCollection'
	 */

    [Bindable(event="propertyChange")]
    private function get evidenceCollection():ArrayCollection
    {
        return this._1171888043evidenceCollection;
    }

    private function set evidenceCollection(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1171888043evidenceCollection;
        if (oldValue !== value)
        {
            this._1171888043evidenceCollection = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "evidenceCollection", oldValue, value));
        }
    }



}
