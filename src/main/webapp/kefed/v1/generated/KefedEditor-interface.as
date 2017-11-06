
package 
{
import edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity;
import edu.isi.bmkeg.kefed.ui.CreditBox;
import edu.isi.bmkeg.kefed.ui.DesignerComponent;
import edu.isi.bmkeg.kefed.ui.InventoryComponent;
import edu.isi.bmkeg.kefed.ui.SpreadsheetComponent;
import edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm;
import edu.isi.bmkeg.utils.powerloom.PowerLoom;
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
import mx.core.Application;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.utils.ObjectProxy;
import mx.states.RemoveChild;
import mx.states.State;
import mx.states.AddChild;
import mx.core.Application;

public class KefedEditor extends mx.core.Application
{
	public function KefedEditor() {}

	[Bindable]
	public var configuration : XML;
	[Bindable]
	public var license : mx.utils.ObjectProxy;
	[Bindable]
	public var inventory : edu.isi.bmkeg.kefed.ui.InventoryComponent;
	[Bindable]
	public var designer : edu.isi.bmkeg.kefed.ui.DesignerComponent;
	[Bindable]
	public var spreadsheet : edu.isi.bmkeg.kefed.ui.SpreadsheetComponent;
	[Bindable]
	public var json : edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm;
	[Bindable]
	public var connectivity : edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity;
	[Bindable]
	public var powerloom : edu.isi.bmkeg.utils.powerloom.PowerLoom;
	[Bindable]
	public var information : edu.isi.bmkeg.kefed.ui.CreditBox;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/KefedEditor.mxml:19,174";

}}
