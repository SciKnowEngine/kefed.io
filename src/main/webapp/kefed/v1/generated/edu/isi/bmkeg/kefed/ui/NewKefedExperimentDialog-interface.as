
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
import mx.containers.FormItem;
import mx.containers.TitleWindow;
import mx.controls.Button;
import mx.controls.ComboBox;
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
import mx.containers.VBox;
import mx.containers.FormItem;
import mx.containers.TitleWindow;
import mx.containers.HBox;
import mx.containers.Form;

public class NewKefedExperimentDialog extends mx.containers.TitleWindow
{
	public function NewKefedExperimentDialog() {}

	[Bindable]
	public var TypeFieldList : mx.containers.FormItem;
	[Bindable]
	public var Type : mx.controls.ComboBox;
	[Bindable]
	public var TypeFieldItem : mx.containers.FormItem;
	[Bindable]
	public var TypeField : mx.controls.TextInput;
	[Bindable]
	public var Name : mx.controls.TextInput;
	[Bindable]
	public var Source : mx.controls.TextInput;
	[Bindable]
	public var Citation : mx.controls.TextInput;
	[Bindable]
	public var Description : mx.controls.TextInput;
	[Bindable]
	public var OkButton : mx.controls.Button;
	[Bindable]
	public var cancelButton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/NewKefedExperimentDialog.mxml:9,33";

}}
