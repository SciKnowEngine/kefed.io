
package edu.isi.bmkeg.kefed.ui
{
import edu.isi.bmkeg.kefed.ui.DataGridComboBox;
import edu.isi.bmkeg.kefed.ui.StructuredEditorComponent;
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
import mx.controls.Button;
import mx.controls.TextInput;
import mx.controls.TileList;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.styles.*;
import edu.isi.bmkeg.kefed.ui.StructuredEditorComponent;
import String;

public class RelativeRegionEditor extends edu.isi.bmkeg.kefed.ui.StructuredEditorComponent
{
	public function RelativeRegionEditor() {}

	[Bindable]
	public var allowedRelations : mx.collections.ArrayCollection;
	[Bindable]
	public var relation : edu.isi.bmkeg.kefed.ui.DataGridComboBox;
	[Bindable]
	public var regions : mx.controls.TileList;
	[Bindable]
	public var addRegions : mx.containers.HBox;
	[Bindable]
	public var newRegion : mx.controls.TextInput;
	[Bindable]
	public var addRegionButton : mx.controls.Button;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "/Users/Gully/Documents/Projects/2_active/IEDB/work/kefedEditor/src/main/flex/edu/isi/bmkeg/kefed/ui/RelativeRegionEditor.mxml:26,168";

}}
