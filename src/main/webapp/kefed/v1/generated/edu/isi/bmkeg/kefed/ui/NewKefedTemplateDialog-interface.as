
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
import mx.containers.Form;
import mx.containers.TitleWindow;
import mx.controls.Button;
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
import mx.containers.VBox;
import mx.containers.FormItem;
import mx.containers.TitleWindow;
import mx.containers.HBox;

public class NewKefedTemplateDialog extends mx.containers.TitleWindow
{
	public function NewKefedTemplateDialog() {}

	[Bindable]
	public var form : mx.containers.Form;
	[Bindable]
	public var Name : mx.controls.TextInput;
	[Bindable]
	public var Source : mx.controls.TextInput;
	[Bindable]
	public var Citation : mx.controls.TextInput;
	[Bindable]
	public var Description : mx.controls.TextArea;
	[Bindable]
	public var OkButton : mx.controls.Button;
	[Bindable]
	public var cancelButton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/NewKefedTemplateDialog.mxml:8,11";

}}
