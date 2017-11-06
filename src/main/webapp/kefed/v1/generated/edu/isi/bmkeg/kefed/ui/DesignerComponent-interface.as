
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
import mx.containers.Accordion;
import mx.containers.ControlBar;
import mx.containers.Form;
import mx.containers.Panel;
import mx.containers.VBox;
import mx.controls.Button;
import mx.controls.DataGrid;
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
import edu.isi.bmkeg.kefed.ui.NamedObjectTemplateTabs;
import com.kapit.diagram.controls.SVGAssetLibraryGroupTile;
import mx.states.AddChild;
import mx.containers.HBox;
import mx.containers.Form;
import mx.controls.Label;
import edu.isi.bmkeg.kefed.ui.VariableTemplateTabs;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.containers.FormHeading;
import mx.containers.VBox;
import mx.containers.FormItem;
import mx.states.State;
import mx.containers.HDividedBox;
import mx.controls.Text;
import mx.controls.Button;

public class DesignerComponent extends mx.containers.VBox
{
	public function DesignerComponent() {}

	[Bindable]
	public var flatPanel : mx.containers.Panel;
	[Bindable]
	public var zoomControl : edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
	[Bindable]
	public var diagram : com.kapit.diagram.view.DiagramView;
	[Bindable]
	public var modelDetails : mx.containers.Panel;
	[Bindable]
	public var editpanel : mx.containers.Accordion;
	[Bindable]
	public var elementGrid : mx.containers.Panel;
	[Bindable]
	public var objectsGrid : mx.controls.DataGrid;
	[Bindable]
	public var activeObjectForm : mx.containers.Panel;
	[Bindable]
	public var modelInfo : mx.containers.Form;
	[Bindable]
	public var nameField : mx.controls.TextInput;
	[Bindable]
	public var descriptionField : mx.controls.TextArea;
	[Bindable]
	public var sourceField : mx.controls.TextInput;
	[Bindable]
	public var citationField : mx.controls.TextInput;
	[Bindable]
	public var showPlButton : mx.controls.Button;
	[Bindable]
	public var controlForm : mx.containers.ControlBar;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/DesignerComponent.mxml:14,355";

}}
