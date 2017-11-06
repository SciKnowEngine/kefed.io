






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
public class _edu_isi_bmkeg_kefed_ui_DesignerComponentWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_DesignerComponentWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.DesignerComponent;
        (edu.isi.bmkeg.kefed.ui.DesignerComponent).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_DesignerComponentWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import edu.isi.bmkeg.kefed.ui.NamedObjectTemplateTabs;
        import flare.analytics.graph.LinkDistance;
        import mx.states.AddChild;
        import mx.core.FlexGlobals;
        import flash.events.MouseEvent;
        import mx.containers.FormItem;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import edu.isi.bmkeg.kefed.elements.KefedPersevereInterface;
        import com.kapit.diagram.proxies.KDLProxy;
        import edu.isi.bmkeg.kefed.store.ModelStoreEvent;
        import mx.controls.Alert;
        import mx.rpc.events.ResultEvent;
        import com.kapit.diagram.model.DiagramModel;
        import mx.events.ListEvent;
        import mx.core.Application;
        import mx.utils.StringUtil;
        import com.kapit.diagram.layouts.utils.Constants;
        import mx.controls.dataGridClasses.DataGridColumn;
        import edu.isi.bmkeg.kefed.ui.VariableTemplateTabs;
        import flare.vis.data.NodeSprite;
        import mx.controls.DataGrid;
        import mx.controls.Text;
        import com.kapit.diagram.layers.DiagramPanel;
        import mx.core.IDeferredInstance;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import mx.events.DataGridEvent;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import mx.containers.Accordion;
        import edu.isi.bmkeg.kefed.ui.kapit.KefedLinkProxy;
        import com.kapit.diagram.view.DiagramObject;
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import edu.isi.bmkeg.kefed.store.IModelStore;
        import mx.containers.Form;
        import edu.isi.bmkeg.kefed.app.KefedAppEvent;
        import mx.binding.BindingManager;
        import edu.isi.bmkeg.kefed.elements.KefedPersevereEvent;
        import mx.containers.FormHeading;
        import edu.isi.bmkeg.kefed.store.persevere.PersevereModelStore;
        import mx.managers.PopUpManager;
        import mx.states.State;
        import mx.containers.HDividedBox;
        import com.kapit.diagram.view.DiagramView;
        import com.kapit.diagram.proxies.DiagramProxy;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import com.kapit.diagram.view.DiagramSprite;
        import mx.binding.utils.ChangeWatcher;
        import com.kapit.diagram.DiagramEvent;
        import edu.isi.bmkeg.kefed.app.KefedAppEventDispatcher;
        import mx.states.RemoveChild;
        import edu.isi.bmkeg.kefed.ui.kapit.DiagramMappings;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.ui.kapit.KefedObjectProxy;
        import edu.isi.bmkeg.kefed.ui.kapit.DiagramZoomHSlider;
        import com.kapit.diagram.layers.DiagramLane;
        import com.kapit.diagram.controls.SVGAssetLibraryGroupTile;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.events.IndexChangedEvent;
        import mx.controls.TextInput;
        import mx.containers.ControlBar;
        import com.kapit.diagram.library.SVGAssetLibrary;
        import mx.containers.Panel;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import mx.utils.ColorUtil;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import mx.managers.CursorManager;
        import edu.isi.bmkeg.utils.powerloom.PLExporter;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;
        import edu.isi.bmkeg.kefed.store.IDataStore;
        import flash.utils.getDefinitionByName;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("diagram",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=6
        [
        bindings[1],
        bindings[6],
        bindings[11],
        bindings[16],
        bindings[21],
        bindings[33]
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
                                                                         // writeWatcherListeners id=0 size=7
        [
        bindings[0],
        bindings[5],
        bindings[10],
        bindings[15],
        bindings[20],
        bindings[25],
        bindings[27]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[26] = new mx.binding.PropertyWatcher("saveAllowed",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=26 size=2
        [
        bindings[49],
        bindings[50]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("modelInfo",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=7
        [
        bindings[4],
        bindings[9],
        bindings[14],
        bindings[19],
        bindings[24],
        bindings[26],
        bindings[28]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("modelDetails",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=13 size=6
        [
        bindings[36],
        bindings[37],
        bindings[38],
        bindings[39],
        bindings[41],
        bindings[42]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[16] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[38]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[17] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[39]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[19] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[41]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[20] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[42]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[36]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[15] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[37]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[18] = new mx.binding.PropertyWatcher("myObjects",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=18 size=1
        [
        bindings[40]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("termLookupService",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=5
        [
        bindings[3],
        bindings[8],
        bindings[13],
        bindings[18],
        bindings[23]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("zoomControl",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=11 size=1
        [
        bindings[34]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("value",
                                                                             {
                change: true,
                valueCommit: true
            }
,
                                                                         // writeWatcherListeners id=12 size=1
        [
        bindings[34]
        ]
,
                                                                 null
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("myObject",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=5
        [
        bindings[2],
        bindings[7],
        bindings[12],
        bindings[17],
        bindings[22]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("zoomFactor",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=10 size=1
        [
        bindings[32]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("flatPanel",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=7 size=2
        [
        bindings[30],
        bindings[31]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderAlpha" ]; },
                                                                                 null
,
                                                                     [bindings[30]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true
        watchers[9] = new mx.binding.FunctionReturnWatcher("getStyle",
                                                                     target,
                                                                     function():Array { return [ "borderColor" ]; },
                                                                                 null
,
                                                                     [bindings[31]],
                                                                     null
                                                                     , true
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("graph",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=5 size=8
        [
        bindings[29],
        bindings[35],
        bindings[43],
        bindings[44],
        bindings[45],
        bindings[46],
        bindings[47],
        bindings[48]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[22] = new mx.binding.PropertyWatcher("dateTime",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=22 size=1
        [
        bindings[45]
        ]
,
                                                                 null
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("modelName",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=6 size=3
        [
        bindings[29],
        bindings[35],
        bindings[43]
        ]
,
                                                                 null
);

        // writeWatcher id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[21] = new mx.binding.PropertyWatcher("description",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=21 size=1
        [
        bindings[44]
        ]
,
                                                                 null
);

        // writeWatcher id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[23] = new mx.binding.PropertyWatcher("source",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=23 size=1
        [
        bindings[46]
        ]
,
                                                                 null
);

        // writeWatcher id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[25] = new mx.binding.PropertyWatcher("type",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=25 size=1
        [
        bindings[48]
        ]
,
                                                                 null
);

        // writeWatcher id=24 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[24] = new mx.binding.PropertyWatcher("citeKey",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=24 size=1
        [
        bindings[47]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=26 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[26].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[13].updateParent(target);

 





        // writeWatcherBottom id=16 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 16 13 parentWatcher
        watchers[16].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[16]);

 





        // writeWatcherBottom id=17 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 17 13 parentWatcher
        watchers[17].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[17]);

 





        // writeWatcherBottom id=19 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 19 13 parentWatcher
        watchers[19].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[19]);

 





        // writeWatcherBottom id=20 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 20 13 parentWatcher
        watchers[20].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[20]);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 14 13 parentWatcher
        watchers[14].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[14]);

 





        // writeWatcherBottom id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 15 13 parentWatcher
        watchers[15].parentWatcher = watchers[13];
        watchers[13].addChild(watchers[15]);

 





        // writeWatcherBottom id=18 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[18].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[11].updateParent(target);

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[11].addChild(watchers[12]);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[10].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].updateParent(target);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 8 7 parentWatcher
        watchers[8].parentWatcher = watchers[7];
        watchers[7].addChild(watchers[8]);

 





        // writeWatcherBottom id=9 shouldWriteSelf=true class=flex2.compiler.as3.binding.FunctionReturnWatcher
        // writeEvaluationWatcherPart 9 7 parentWatcher
        watchers[9].parentWatcher = watchers[7];
        watchers[7].addChild(watchers[9]);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=22 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[22]);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[6]);

 





        // writeWatcherBottom id=21 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[21]);

 





        // writeWatcherBottom id=23 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[23]);

 





        // writeWatcherBottom id=25 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[25]);

 





        // writeWatcherBottom id=24 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].addChild(watchers[24]);

 





    }
}

}
