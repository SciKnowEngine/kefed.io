
package edu.isi.bmkeg.kefed.ui.persevere
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
import mx.controls.Button;
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
import mx.containers.FormHeading;
import mx.containers.FormItem;
import mx.containers.HBox;
import mx.containers.Form;

public class PersevereJSONForm extends mx.containers.Form
{
	public function PersevereJSONForm() {}

	[Bindable]
	public var codeBox : mx.controls.TextArea;
	[Bindable]
	public var checkButton : mx.controls.Button;
	[Bindable]
	public var insertButton : mx.controls.Button;
	[Bindable]
	public var saveButton : mx.controls.Button;
	[Bindable]
	public var cancelButton : mx.controls.Button;
	[Bindable]
	public var message : mx.controls.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/persevere/PersevereJSONForm.mxml:10,166";

}}
