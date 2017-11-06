
package edu.isi.bmkeg.kefed.ui
{
import com.kapit.diagram.view.DiagramView;
import edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
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
import mx.containers.Form;
import mx.containers.Panel;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.DataGrid;
import mx.controls.List;
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
import mx.styles.*;
import mx.states.RemoveChild;
import mx.containers.VDividedBox;
import mx.states.AddChild;
import mx.containers.HBox;
import mx.controls.Label;
import edu.isi.bmkeg.kefed.ui.VariableTemplateTabs;
import mx.controls.Spacer;
import mx.containers.FormHeading;
import mx.containers.VBox;
import mx.containers.FormItem;
import mx.states.State;
import mx.controls.Text;
import mx.containers.HDividedBox;
import mx.controls.Button;

public class SpreadsheetComponent extends mx.containers.VBox
{
	public function SpreadsheetComponent() {}

	[Bindable]
	public var depVbData : mx.controls.DataGrid;
	[Bindable]
	public var CopySelectedDataRowButton : mx.controls.Button;
	[Bindable]
	public var CopyLastDataRowButton : mx.controls.Button;
	[Bindable]
	public var RemoveDataRowButton : mx.controls.Button;
	[Bindable]
	public var createSpreadsheetButton : mx.controls.Button;
	[Bindable]
	public var spreadsheet : mx.controls.TextArea;
	[Bindable]
	public var checkDataButton : mx.controls.Button;
	[Bindable]
	public var loadToGridButton : mx.controls.Button;
	[Bindable]
	public var flatPanel : mx.containers.Panel;
	[Bindable]
	public var zoomControl : edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
	[Bindable]
	public var diagram : com.kapit.diagram.view.DiagramView;
	[Bindable]
	public var modelName : mx.controls.TextInput;
	[Bindable]
	public var modelSource : mx.controls.TextInput;
	[Bindable]
	public var modelCitation : mx.controls.TextInput;
	[Bindable]
	public var cntrlVaribleList : mx.containers.Panel;
	[Bindable]
	public var cntrlVbGrid : mx.controls.List;
	[Bindable]
	public var indepVaribleList : mx.containers.Panel;
	[Bindable]
	public var indepVbGrid : mx.controls.List;
	[Bindable]
	public var depVaribleList : mx.containers.Panel;
	[Bindable]
	public var depVbGrid : mx.controls.List;
	[Bindable]
	public var dataGrid : mx.containers.VBox;
	[Bindable]
	public var activeObjectForm : mx.containers.VBox;
	[Bindable]
	public var modelInfo : mx.containers.Form;
	[Bindable]
	public var descriptionField : mx.controls.TextArea;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/SpreadsheetComponent.mxml:42,943";

}}
