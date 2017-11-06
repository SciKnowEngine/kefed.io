
package edu.isi.bmkeg.kefed.ui
{
import edu.isi.bmkeg.kefed.ui.FieldTemplateTabs;
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
import mx.collections.ArrayCollection;
import mx.containers.HBox;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.ComboBox;
import mx.controls.DataGrid;
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
import Array;
import mx.controls.Spacer;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.containers.VBox;
import mx.controls.TextInput;
import mx.states.State;
import mx.states.AddChild;
import mx.containers.HBox;
import String;
import edu.isi.bmkeg.kefed.ui.AllowedValuesListComponent;
import mx.controls.Label;

public class TypeTemplateForm extends mx.containers.VBox
{
	public function TypeTemplateForm() {}

	[Bindable]
	public var typeItem : mx.containers.HBox;
	[Bindable]
	public var typeList : mx.controls.ComboBox;
	[Bindable]
	public var typeOptions : mx.collections.ArrayCollection;
	[Bindable]
	public var minIntegerValue : mx.controls.TextInput;
	[Bindable]
	public var maxIntegerValue : mx.controls.TextInput;
	[Bindable]
	public var minDecimalValue : mx.controls.TextInput;
	[Bindable]
	public var maxDecimalValue : mx.controls.TextInput;
	[Bindable]
	public var minUnitValue : mx.controls.TextInput;
	[Bindable]
	public var maxUnitValue : mx.controls.TextInput;
	[Bindable]
	public var multislotGrid : mx.controls.DataGrid;
	[Bindable]
	public var addFieldButton : mx.controls.Button;
	[Bindable]
	public var removeFieldButton : mx.controls.Button;
	[Bindable]
	public var moveValueUpButton : mx.controls.Button;
	[Bindable]
	public var moveValueDownButton : mx.controls.Button;
	[Bindable]
	public var fieldTypeForm : edu.isi.bmkeg.kefed.ui.FieldTemplateTabs;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/TypeTemplateForm.mxml:15,219";

}}
