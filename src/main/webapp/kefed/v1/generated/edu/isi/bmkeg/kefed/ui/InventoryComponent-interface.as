
package edu.isi.bmkeg.kefed.ui
{
import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList;
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
import mx.containers.HDividedBox;
import mx.controls.Button;
import mx.controls.DataGrid;
import mx.controls.Label;
import mx.controls.TextArea;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Spacer;
import mx.containers.VBox;
import mx.containers.ControlBar;
import mx.containers.HDividedBox;
import mx.containers.Panel;
import edu.isi.bmkeg.kefed.ui.CreditBox;
import mx.containers.Accordion;

public class InventoryComponent extends mx.containers.HDividedBox
{
	public function InventoryComponent() {}

	[Bindable]
	public var list : edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList;
	[Bindable]
	public var selectedOntologiesLabel : mx.controls.TextArea;
	[Bindable]
	public var templateGrid : mx.controls.DataGrid;
	[Bindable]
	public var designCount : mx.controls.Label;
	[Bindable]
	public var newDesignButton : mx.controls.Button;
	[Bindable]
	public var copyDesignButton : mx.controls.Button;
	[Bindable]
	public var editDesignButton : mx.controls.Button;
	[Bindable]
	public var deleteDesignButton : mx.controls.Button;
	[Bindable]
	public var importDesignButton : mx.controls.Button;
	[Bindable]
	public var exportDesignButton : mx.controls.Button;
	[Bindable]
	public var experimentGrid : mx.controls.DataGrid;
	[Bindable]
	public var experimentCount : mx.controls.Label;
	[Bindable]
	public var newExperimentButton : mx.controls.Button;
	[Bindable]
	public var copyExperimentButton : mx.controls.Button;
	[Bindable]
	public var editExperimentButton : mx.controls.Button;
	[Bindable]
	public var deleteExperimentButton : mx.controls.Button;
	[Bindable]
	public var importExperimentButton : mx.controls.Button;
	[Bindable]
	public var exportExperimentButton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/InventoryComponent.mxml:12,753";

}}
