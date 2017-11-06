
package edu.isi.bmkeg.kefed.ontology
{
import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialogInnerClass0;
import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialogInnerClass1;
import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid;
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
import mx.containers.TitleWindow;
import mx.controls.Button;
import mx.controls.CheckBox;
import mx.controls.Label;
import mx.controls.RadioButtonGroup;
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
import mx.formatters.NumberFormatter;
import mx.styles.*;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.Spacer;
import mx.containers.VDividedBox;
import mx.containers.VBox;
import mx.containers.TitleWindow;
import mx.core.IFactory;
import edu.isi.bmkeg.utils.CheckBoxDataGrid.columns;
import mx.containers.Panel;
import mx.controls.RadioButton;
import mx.controls.Button;
import mx.containers.HBox;

public class OntologyTermLookupDialog extends mx.containers.TitleWindow
{
	public function OntologyTermLookupDialog() {}

	[Bindable]
	public var elapsedTimeFormatter : mx.formatters.NumberFormatter;
	[Bindable]
	public var exactControl : mx.controls.RadioButtonGroup;
	[Bindable]
	public var searchInput : mx.controls.TextInput;
	[Bindable]
	public var searchButton : mx.controls.Button;
	[Bindable]
	public var propControl : mx.controls.CheckBox;
	[Bindable]
	public var ontologyListLabel : mx.controls.TextArea;
	[Bindable]
	public var resultsPanel : mx.containers.Panel;
	[Bindable]
	public var dg : edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid;
	[Bindable]
	public var searchCount : mx.controls.Label;
	[Bindable]
	public var searchTime : mx.controls.Label;
	[Bindable]
	public var termListLabel : mx.controls.TextArea;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ontology/OntologyTermLookupDialog.mxml:11,254";

}}
