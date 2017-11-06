






package
{
import mx.core.IFlexModuleFactory;
import mx.binding.ArrayElementWatcher;
import mx.binding.FunctionReturnWatcher;
import mx.binding.IWatcherSetupUtil2;
import mx.binding.PropertyWatcher;
import mx.binding.RepeaterComponentWatcher;
import mx.binding.RepeaterItemWatcher;
import mx.binding.StaticPropertyWatcher;
import mx.binding.XMLWatcher;
import mx.binding.Watcher;

[ExcludeClass]
public class _edu_isi_bmkeg_kefed_ui_SpreadsheetComponentWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_SpreadsheetComponentWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.SpreadsheetComponent;
        (edu.isi.bmkeg.kefed.ui.SpreadsheetComponent).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_SpreadsheetComponentWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import flash.net.FileReference;
        import mx.states.AddChild;
        import mx.core.FlexGlobals;
        import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.controls.Spacer;
        import flash.events.MouseEvent;
        import mx.containers.FormItem;
        import mx.containers.VBox;
        import edu.isi.bmkeg.kefed.ui.TextDisplayDialog;
        import mx.core.IFactory;
        import edu.isi.bmkeg.kefed.elements.KefedPersevereInterface;
        import com.kapit.diagram.proxies.KDLProxy;
        import edu.isi.bmkeg.kefed.elements.KefedFieldTemplate;
        import mx.controls.Alert;
        import flare.vis.events.SelectionEvent;
        import com.kapit.diagram.model.DiagramModel;
        import edu.isi.bmkeg.kefed.ui.DataEntryComboFactory;
        import edu.isi.bmkeg.kefed.elements.KefedFullValueTemplate;
        import mx.events.ListEvent;
        import mx.core.Application;
        import mx.utils.StringUtil;
        import com.kapit.diagram.layouts.utils.Constants;
        import mx.controls.dataGridClasses.DataGridColumn;
        import edu.isi.bmkeg.kefed.ui.VariableTemplateTabs;
        import edu.isi.bmkeg.kefed.ui.DataEntryCheckBoxFactory;
        import mx.controls.DataGrid;
        import mx.controls.Text;
        import mx.core.IDeferredInstance;
        import mx.charts.chartClasses.DataTip;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import mx.events.DataGridEvent;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import edu.isi.bmkeg.kefed.ui.DataEntryLongEditorFactory;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import edu.isi.bmkeg.kefed.ui.DataGridComboBox;
        import edu.isi.bmkeg.kefed.ui.kapit.KefedLinkProxy;
        import mx.containers.VDividedBox;
        import mx.utils.ArrayUtil;
        import edu.isi.bmkeg.utils.DataUtil;
        import com.kapit.diagram.view.DiagramObject;
        import flash.events.IEventDispatcher;
        import mx.controls.List;
        import mx.containers.HBox;
        import mx.containers.Form;
        import com.kapit.diagram.ui.Utils;
        import edu.isi.bmkeg.kefed.app.KefedAppEvent;
        import mx.binding.BindingManager;
        import edu.isi.bmkeg.kefed.elements.KefedPersevereEvent;
        import mx.containers.FormHeading;
        import mx.managers.PopUpManager;
        import edu.isi.bmkeg.kefed.ui.DataEntryUnitsFactory;
        import mx.states.State;
        import mx.containers.HDividedBox;
        import com.kapit.diagram.view.DiagramView;
        import mx.utils.ObjectUtil;
        import com.kapit.diagram.proxies.DiagramProxy;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import com.kapit.diagram.view.DiagramSprite;
        import edu.isi.bmkeg.kefed.ui.DataEntryEditorFactory;
        import com.kapit.diagram.DiagramEvent;
        import mx.states.RemoveChild;
        import mx.controls.sliderClasses.Slider;
        import edu.isi.bmkeg.kefed.ui.kapit.DiagramMappings;
        import edu.isi.bmkeg.kefed.elements.KefedExperiment;
        import mx.core.ScrollPolicy;
        import flash.utils.ByteArray;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.ui.kapit.KefedObjectProxy;
        import edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
        import edu.isi.bmkeg.kefed.ui.ComplexDataGridColumn;
        import edu.isi.bmkeg.kefed.ui.DataEntryRelativeRegionFactory;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.TextInput;
        import mx.charts.HitData;
        import com.kapit.diagram.library.SVGAssetLibrary;
        import mx.containers.Panel;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import edu.isi.bmkeg.utils.powerloom.PLExporter;
        import mx.events.SliderEvent;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("dataColumns",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=7 size=1
        [
        bindings[14]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=28 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[28] = new mx.binding.PropertyWatcher("depVaribleList",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=28 size=2
        [
        bindings[37],
        bindings[38]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=29 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[29] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[37]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=30 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[30] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[38]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=24 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[24] = new mx.binding.PropertyWatcher("cntrlVbs",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=24 size=1
        [
        bindings[33]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[21] = new mx.binding.PropertyWatcher("indepVaribleList",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=21 size=4
        [
        bindings[31],
        bindings[32],
        bindings[34],
        bindings[35]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[22] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[31]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[23] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[32]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[25] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[34]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[26] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[35]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("dataGrid",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=4
        [
        bindings[1],
        bindings[6],
        bindings[11],
        bindings[20]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.PropertyWatcher("flatPanel",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=14 size=2
        [
        bindings[22],
        bindings[23]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[16] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[23]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[15] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[22]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=27 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[27] = new mx.binding.PropertyWatcher("indepVbs",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=27 size=1
        [
        bindings[36]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("diagram",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=3
        [
        bindings[3],
        bindings[8],
        bindings[24]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=31 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[31] = new mx.binding.PropertyWatcher("depVbs",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=31 size=1
        [
        bindings[39]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("activeObjectForm",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=4
        [
        bindings[0],
        bindings[5],
        bindings[10],
        bindings[19]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=8 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[20] = new mx.binding.PropertyWatcher("saveAllowed",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=20 size=2
        [
        bindings[29],
        bindings[30]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("termLookupService",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=2
        [
        bindings[4],
        bindings[9]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("dataTable",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=6 size=2
        [
        bindings[13],
        bindings[17]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("length",
                                                                             {
                collectionChange: true
            }
,
                                                                         // writeWatcherListeners id=11 size=1
        [
        bindings[17]
        ]
,
                                                                 null
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.PropertyWatcher("depVbData",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=9 size=2
        [
        bindings[16],
        bindings[18]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("selectedIndex",
                                                                             {
                change: true,
                valueCommit: true
            }
,
                                                                         // writeWatcherListeners id=10 size=2
        [
        bindings[16],
        bindings[18]
        ]
,
                                                                 null
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("activeVb",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=3
        [
        bindings[2],
        bindings[7],
        bindings[12]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("nameValue",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=5 size=1
        [
        bindings[12]
        ]
,
                                                                 null
);

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("model",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=12 size=7
        [
        bindings[21],
        bindings[25],
        bindings[26],
        bindings[27],
        bindings[28],
        bindings[40],
        bindings[41]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=33 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[33] = new mx.binding.PropertyWatcher("dateTime",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=33 size=1
        [
        bindings[41]
        ]
,
                                                                 null
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("modelName",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=13 size=2
        [
        bindings[21],
        bindings[26]
        ]
,
                                                                 null
);

        // writeWatcher id=32 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[32] = new mx.binding.PropertyWatcher("description",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=32 size=1
        [
        bindings[40]
        ]
,
                                                                 null
);

        // writeWatcher id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[18] = new mx.binding.PropertyWatcher("source",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=18 size=1
        [
        bindings[27]
        ]
,
                                                                 null
);

        // writeWatcher id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[17] = new mx.binding.PropertyWatcher("type",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=17 size=1
        [
        bindings[25]
        ]
,
                                                                 null
);

        // writeWatcher id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[19] = new mx.binding.PropertyWatcher("citeKey",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=19 size=1
        [
        bindings[28]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].updateParent(target);

 





        // writeWatcherBottom id=28 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[28].updateParent(target);

 





        // writeWatcherBottom id=29 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 29 28 parentWatcher
        watchers[29].parentWatcher = watchers[28];
        watchers[28].addChild(watchers[29]);

 





        // writeWatcherBottom id=30 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 30 28 parentWatcher
        watchers[30].parentWatcher = watchers[28];
        watchers[28].addChild(watchers[30]);

 





        // writeWatcherBottom id=24 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[24].updateParent(target);

 





        // writeWatcherBottom id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[21].updateParent(target);

 





        // writeWatcherBottom id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 22 21 parentWatcher
        watchers[22].parentWatcher = watchers[21];
        watchers[21].addChild(watchers[22]);

 





        // writeWatcherBottom id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 23 21 parentWatcher
        watchers[23].parentWatcher = watchers[21];
        watchers[21].addChild(watchers[23]);

 





        // writeWatcherBottom id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 25 21 parentWatcher
        watchers[25].parentWatcher = watchers[21];
        watchers[21].addChild(watchers[25]);

 





        // writeWatcherBottom id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 26 21 parentWatcher
        watchers[26].parentWatcher = watchers[21];
        watchers[21].addChild(watchers[26]);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[14].updateParent(target);

 





        // writeWatcherBottom id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 16 14 parentWatcher
        watchers[16].parentWatcher = watchers[14];
        watchers[14].addChild(watchers[16]);

 





        // writeWatcherBottom id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 15 14 parentWatcher
        watchers[15].parentWatcher = watchers[14];
        watchers[14].addChild(watchers[15]);

 





        // writeWatcherBottom id=27 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[27].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=31 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[31].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=8 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[20].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].addChild(watchers[11]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[9].updateParent(target);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[9].addChild(watchers[10]);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[5]);

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].updateParent(target);

 





        // writeWatcherBottom id=33 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[33]);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[13]);

 





        // writeWatcherBottom id=32 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[32]);

 





        // writeWatcherBottom id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[18]);

 





        // writeWatcherBottom id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[17]);

 





        // writeWatcherBottom id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[12].addChild(watchers[19]);

 





    }
}

}
