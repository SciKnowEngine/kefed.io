

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
import mx.rpc.soap.mxml.WebService;
import flash.display.*;
import flash.xml.*;
import mx.controls.Button;
import flash.ui.*;
import mx.binding.*;
import flash.utils.*;
import flash.accessibility.*;
import flash.printing.*;
import mx.controls.Label;
import mx.styles.*;
import flash.errors.*;
import flash.net.*;
import flash.system.*;
import mx.controls.TextInput;
import mx.controls.DataGrid;
import flash.events.*;
import mx.controls.TextArea;
import flash.filters.*;
import edu.isi.bmkeg.utils.powerloom.*;
import flash.profiler.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property askInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'askInput' moved to '_628256559askInput'
	 */

    [Bindable(event="propertyChange")]
    public function get askInput():mx.controls.TextInput
    {
        return this._628256559askInput;
    }

    public function set askInput(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._628256559askInput;
        if (oldValue !== value)
        {
            this._628256559askInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "askInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property askResult (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'askResult' moved to '_2046644234askResult'
	 */

    [Bindable(event="propertyChange")]
    public function get askResult():mx.controls.TextInput
    {
        return this._2046644234askResult;
    }

    public function set askResult(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._2046644234askResult;
        if (oldValue !== value)
        {
            this._2046644234askResult = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "askResult", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property commandInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'commandInput' moved to '_1935761215commandInput'
	 */

    [Bindable(event="propertyChange")]
    public function get commandInput():mx.controls.TextInput
    {
        return this._1935761215commandInput;
    }

    public function set commandInput(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1935761215commandInput;
        if (oldValue !== value)
        {
            this._1935761215commandInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commandInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property commandResult (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'commandResult' moved to '_128495432commandResult'
	 */

    [Bindable(event="propertyChange")]
    public function get commandResult():mx.controls.TextInput
    {
        return this._128495432commandResult;
    }

    public function set commandResult(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._128495432commandResult;
        if (oldValue !== value)
        {
            this._128495432commandResult = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "commandResult", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property desiredAnswers (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'desiredAnswers' moved to '_414257029desiredAnswers'
	 */

    [Bindable(event="propertyChange")]
    public function get desiredAnswers():mx.controls.TextInput
    {
        return this._414257029desiredAnswers;
    }

    public function set desiredAnswers(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._414257029desiredAnswers;
        if (oldValue !== value)
        {
            this._414257029desiredAnswers = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "desiredAnswers", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property doAskButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'doAskButton' moved to '_130609472doAskButton'
	 */

    [Bindable(event="propertyChange")]
    public function get doAskButton():mx.controls.Button
    {
        return this._130609472doAskButton;
    }

    public function set doAskButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._130609472doAskButton;
        if (oldValue !== value)
        {
            this._130609472doAskButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "doAskButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property doCommandButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'doCommandButton' moved to '_633088914doCommandButton'
	 */

    [Bindable(event="propertyChange")]
    public function get doCommandButton():mx.controls.Button
    {
        return this._633088914doCommandButton;
    }

    public function set doCommandButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._633088914doCommandButton;
        if (oldValue !== value)
        {
            this._633088914doCommandButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "doCommandButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property doRetrievalButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'doRetrievalButton' moved to '_1528215685doRetrievalButton'
	 */

    [Bindable(event="propertyChange")]
    public function get doRetrievalButton():mx.controls.Button
    {
        return this._1528215685doRetrievalButton;
    }

    public function set doRetrievalButton(value:mx.controls.Button):void
    {
    	var oldValue:Object = this._1528215685doRetrievalButton;
        if (oldValue !== value)
        {
            this._1528215685doRetrievalButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "doRetrievalButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property errorDetail (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'errorDetail' moved to '_1604308871errorDetail'
	 */

    [Bindable(event="propertyChange")]
    public function get errorDetail():mx.controls.TextArea
    {
        return this._1604308871errorDetail;
    }

    public function set errorDetail(value:mx.controls.TextArea):void
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
	 * generated bindable wrapper for property moduleInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'moduleInput' moved to '_1215306562moduleInput'
	 */

    [Bindable(event="propertyChange")]
    public function get moduleInput():mx.controls.TextInput
    {
        return this._1215306562moduleInput;
    }

    public function set moduleInput(value:mx.controls.TextInput):void
    {
    	var oldValue:Object = this._1215306562moduleInput;
        if (oldValue !== value)
        {
            this._1215306562moduleInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "moduleInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property nAnswers (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'nAnswers' moved to '_747136985nAnswers'
	 */

    [Bindable(event="propertyChange")]
    public function get nAnswers():mx.controls.Label
    {
        return this._747136985nAnswers;
    }

    public function set nAnswers(value:mx.controls.Label):void
    {
    	var oldValue:Object = this._747136985nAnswers;
        if (oldValue !== value)
        {
            this._747136985nAnswers = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nAnswers", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property plsoapWS (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'plsoapWS' moved to '_1909725021plsoapWS'
	 */

    [Bindable(event="propertyChange")]
    public function get plsoapWS():mx.rpc.soap.mxml.WebService
    {
        return this._1909725021plsoapWS;
    }

    public function set plsoapWS(value:mx.rpc.soap.mxml.WebService):void
    {
    	var oldValue:Object = this._1909725021plsoapWS;
        if (oldValue !== value)
        {
            this._1909725021plsoapWS = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "plsoapWS", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property retrievalInput (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'retrievalInput' moved to '_747241226retrievalInput'
	 */

    [Bindable(event="propertyChange")]
    public function get retrievalInput():mx.controls.TextArea
    {
        return this._747241226retrievalInput;
    }

    public function set retrievalInput(value:mx.controls.TextArea):void
    {
    	var oldValue:Object = this._747241226retrievalInput;
        if (oldValue !== value)
        {
            this._747241226retrievalInput = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "retrievalInput", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property retrievalResults (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'retrievalResults' moved to '_1696576990retrievalResults'
	 */

    [Bindable(event="propertyChange")]
    public function get retrievalResults():mx.controls.DataGrid
    {
        return this._1696576990retrievalResults;
    }

    public function set retrievalResults(value:mx.controls.DataGrid):void
    {
    	var oldValue:Object = this._1696576990retrievalResults;
        if (oldValue !== value)
        {
            this._1696576990retrievalResults = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "retrievalResults", oldValue, value));
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



}
