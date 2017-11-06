
package edu.isi.bmkeg.kefed.ui
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
import mx.containers.TabNavigator;
import mx.containers.VBox;
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
import edu.isi.bmkeg.kefed.ui.NotesComponent;
import mx.containers.VBox;
import edu.isi.bmkeg.kefed.ui.TypeTemplateForm;
import edu.isi.bmkeg.kefed.ui.OntologyIdFormItem;
import mx.containers.HBox;
import mx.containers.Form;
import mx.controls.Label;

public class FieldTemplateTabs extends mx.containers.VBox
{
	public function FieldTemplateTabs() {}

	[Bindable]
	public var variableDataNameControl : mx.controls.TextInput;
	[Bindable]
	public var tn : mx.containers.TabNavigator;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/FieldTemplateTabs.mxml:11,65";

}}
