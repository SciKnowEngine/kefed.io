
package edu.isi.bmkeg.domains.neuralconnectivity
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
import mx.containers.HBox;
import mx.containers.Panel;
import mx.containers.VBox;
import mx.containers.VDividedBox;
import mx.controls.AdvancedDataGrid;
import mx.controls.DataGrid;
import mx.controls.Label;
import mx.controls.Text;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.formatters.NumberFormatter;
import mx.rpc.http.mxml.HTTPService;
import mx.rpc.soap.mxml.WebService;
import mx.styles.*;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Spacer;
import mx.containers.VBox;
import mx.states.State;
import mx.containers.Panel;
import mx.states.AddChild;
import mx.containers.HBox;
import mx.controls.HRule;
import mx.controls.Label;

public class NeuralConnectivity extends mx.containers.Panel
{
	public function NeuralConnectivity() {}

	[Bindable]
	public var matrixData : XML;
	[Bindable]
	public var elapsedTimeFormatter : mx.formatters.NumberFormatter;
	[Bindable]
	public var evidenceWS : mx.rpc.soap.mxml.WebService;
	[Bindable]
	public var plainRPC : mx.rpc.http.mxml.HTTPService;
	[Bindable]
	public var errorType : mx.controls.Label;
	[Bindable]
	public var errorDetail : mx.controls.Text;
	[Bindable]
	public var content : mx.containers.VDividedBox;
	[Bindable]
	public var matrixBox : mx.containers.VBox;
	[Bindable]
	public var connectionMatrix : mx.controls.AdvancedDataGrid;
	[Bindable]
	public var legend : mx.controls.Label;
	[Bindable]
	public var evidenceBox : mx.containers.VBox;
	[Bindable]
	public var connectionDescription : mx.controls.Label;
	[Bindable]
	public var evidenceCount : mx.controls.Label;
	[Bindable]
	public var evidenceTime : mx.controls.Label;
	[Bindable]
	public var evidenceFile : mx.controls.DataGrid;
	[Bindable]
	public var pubid : mx.containers.HBox;
	[Bindable]
	public var pmidLabel : mx.controls.Label;
	[Bindable]
	public var libraryID : mx.controls.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/domains/neuralconnectivity/NeuralConnectivity.mxml:12,320";

}}
