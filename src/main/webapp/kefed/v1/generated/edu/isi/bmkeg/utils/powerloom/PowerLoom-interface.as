
package edu.isi.bmkeg.utils.powerloom
{
import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.filters.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.containers.Panel;
import mx.controls.Button;
import mx.controls.DataGrid;
import mx.controls.Label;
import mx.controls.TextArea;
import mx.controls.TextInput;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.rpc.soap.mxml.WebService;
import mx.styles.*;
import mx.containers.VBox;
import mx.containers.Panel;
import mx.containers.HBox;
import mx.controls.HRule;

public class PowerLoom extends mx.containers.Panel
{
	public function PowerLoom() {}

	[Bindable]
	public var plsoapWS : mx.rpc.soap.mxml.WebService;
	[Bindable]
	public var moduleInput : mx.controls.TextInput;
	[Bindable]
	public var commandInput : mx.controls.TextInput;
	[Bindable]
	public var doCommandButton : mx.controls.Button;
	[Bindable]
	public var commandResult : mx.controls.TextInput;
	[Bindable]
	public var askInput : mx.controls.TextInput;
	[Bindable]
	public var doAskButton : mx.controls.Button;
	[Bindable]
	public var askResult : mx.controls.TextInput;
	[Bindable]
	public var desiredAnswers : mx.controls.TextInput;
	[Bindable]
	public var retrievalInput : mx.controls.TextArea;
	[Bindable]
	public var doRetrievalButton : mx.controls.Button;
	[Bindable]
	public var nAnswers : mx.controls.Label;
	[Bindable]
	public var retrievalResults : mx.controls.DataGrid;
	[Bindable]
	public var errorType : mx.controls.Label;
	[Bindable]
	public var errorDetail : mx.controls.TextArea;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/utils/powerloom/PowerLoom.mxml:9,59";

}}
