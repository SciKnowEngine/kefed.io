






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
public class _edu_isi_bmkeg_kefed_ui_InventoryComponentWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_InventoryComponentWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.InventoryComponent;
        (edu.isi.bmkeg.kefed.ui.InventoryComponent).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_InventoryComponentWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.FlexGlobals;
        import mx.core.IFlexDisplayObject;
        import mx.controls.Spacer;
        import flash.events.MouseEvent;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import edu.isi.bmkeg.kefed.store.ModelStoreEvent;
        import mx.controls.Alert;
        import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxRenderer;
        import mx.events.ListEvent;
        import mx.core.Application;
        import edu.isi.bmkeg.kefed.store.json.JSONSerializer;
        import mx.controls.dataGridClasses.DataGridColumn;
        import mx.controls.DataGrid;
        import mx.core.IDeferredInstance;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import mx.containers.Accordion;
        import edu.isi.bmkeg.kefed.store.DataStoreEvent;
        import flash.events.IEventDispatcher;
        import edu.isi.bmkeg.kefed.store.IModelStore;
        import edu.isi.bmkeg.kefed.app.KefedAppEvent;
        import mx.binding.BindingManager;
        import mx.managers.PopUpManager;
        import mx.containers.HDividedBox;
        import mx.core.IFlexModuleFactory;
        import edu.isi.bmkeg.kefed.ui.CreditBox;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import edu.isi.bmkeg.kefed.app.KefedAppEventDispatcher;
        import edu.isi.bmkeg.kefed.elements.KefedExperiment;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxList;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.containers.ControlBar;
        import mx.events.CloseEvent;
        import mx.containers.Panel;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import mx.managers.CursorManager;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;
        import edu.isi.bmkeg.kefed.store.IDataStore;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("templateList",
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

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("experimentCountText",
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

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("designCountText",
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
        watchers[0] = new mx.binding.PropertyWatcher("ontologyList",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=1
        [
        bindings[0]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("experimentList",
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


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[4].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





    }
}

}
