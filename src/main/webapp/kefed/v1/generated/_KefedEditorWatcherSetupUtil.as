






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
public class _KefedEditorWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _KefedEditorWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import KefedEditor;
        (KefedEditor).watcherSetupUtil = new _KefedEditorWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.bioportal.NCBOBioPortalInterface;
        import edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm;
        import edu.isi.bmkeg.kefed.store.elasticSearch.ElasticSearchModelStore;
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import mx.states.AddChild;
        import mx.core.FlexGlobals;
        import mx.utils.ObjectProxy;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import mx.controls.Alert;
        import mx.managers.IBrowserManager;
        import edu.isi.bmkeg.kefed.store.elasticSearch.ElasticSearchDataStore;
        import edu.isi.bmkeg.utils.Parameters;
        import mx.core.Application;
        import edu.isi.bmkeg.kefed.ontology.sparql.SparqlOntologyInterface;
        import mx.core.IDeferredInstance;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import edu.isi.bmkeg.kefed.ui.DesignerComponent;
        import flash.events.IEventDispatcher;
        import edu.isi.bmkeg.kefed.store.IModelStore;
        import edu.isi.bmkeg.kefed.app.KefedAppEvent;
        import mx.binding.BindingManager;
        import mx.utils.URLUtil;
        import mx.states.State;
        import mx.managers.BrowserManager;
        import mx.core.IFlexModuleFactory;
        import edu.isi.bmkeg.kefed.ui.SpreadsheetComponent;
        import edu.isi.bmkeg.kefed.ui.CreditBox;
        import mx.core.DeferredInstanceFromClass;
        import edu.isi.bmkeg.kefed.app.KefedAppEventDispatcher;
        import mx.states.RemoveChild;
        import edu.isi.bmkeg.kefed.ui.kapit.DiagramMappings;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.ontology.OntologySearchEvent;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import edu.isi.bmkeg.kefed.ui.InventoryComponent;
        import com.kapit.diagram.library.SVGAssetLibrary;
        import mx.core.mx_internal;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import mx.core.ClassFactory;
        import edu.isi.bmkeg.utils.powerloom.PowerLoom;
        import mx.core.DeferredInstanceFromFunction;
        import edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;
        import edu.isi.bmkeg.kefed.store.IDataStore;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("modelStore",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=1
        [
        bindings[1]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("termLookupService",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=5 size=2
        [
        bindings[6],
        bindings[8]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("serverUrl",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=8 size=2
        [
        bindings[13],
        bindings[15]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("jsonFormDataStore",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=7 size=1
        [
        bindings[11]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("dataStore",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=1
        [
        bindings[2]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("information",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=6
        [
        bindings[0],
        bindings[5],
        bindings[7],
        bindings[9],
        bindings[12],
        bindings[14]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("jsonFormModelStore",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=6 size=1
        [
        bindings[10]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("schemaStore",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=1
        [
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("ontologyList",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=1
        [
        bindings[4]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[8].updateParent(target);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[7].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[6].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





    }
}

}
