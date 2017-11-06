






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
public class _edu_isi_bmkeg_kefed_ui_persevere_PersevereJSONFormWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_persevere_PersevereJSONFormWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm;
        (edu.isi.bmkeg.kefed.ui.persevere.PersevereJSONForm).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_persevere_PersevereJSONFormWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.store.DataStoreEvent;
        import flash.events.IEventDispatcher;
        import mx.core.FlexGlobals;
        import mx.containers.HBox;
        import edu.isi.bmkeg.kefed.store.IModelStore;
        import mx.containers.Form;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.binding.BindingManager;
        import mx.containers.FormHeading;
        import flash.events.MouseEvent;
        import mx.containers.FormItem;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import edu.isi.bmkeg.kefed.store.ModelStoreEvent;
        import mx.controls.Alert;
        import edu.isi.bmkeg.kefed.elements.KefedExperiment;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.store.json.JSONSerializer;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import edu.isi.bmkeg.kefed.elements.KefedModel;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.events.FlexEvent;
        import edu.isi.bmkeg.kefed.store.IDataStore;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("messageText",
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

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("jsonCode",
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


        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
