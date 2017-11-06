






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
public class _edu_isi_bmkeg_utils_powerloom_PowerLoomWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_utils_powerloom_PowerLoomWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.utils.powerloom.PowerLoom;
        (edu.isi.bmkeg.utils.powerloom.PowerLoom).watcherSetupUtil = new _edu_isi_bmkeg_utils_powerloom_PowerLoomWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import flash.events.IEventDispatcher;
        import mx.core.FlexGlobals;
        import mx.containers.HBox;
        import edu.isi.bmkeg.utils.powerloom.PL;
        import mx.rpc.soap.mxml.WebService;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.rpc.http.HTTPService;
        import mx.binding.BindingManager;
        import flash.events.MouseEvent;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import mx.controls.Alert;
        import mx.controls.HRule;
        import mx.rpc.events.ResultEvent;
        import mx.binding.IBindingClient;
        import mx.events.ListEvent;
        import mx.core.Application;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.dataGridClasses.DataGridColumn;
        import mx.controls.TextInput;
        import mx.controls.DataGrid;
        import mx.containers.Panel;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import mx.rpc.soap.mxml.Operation;
        import mx.rpc.soap.WebService;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("plserver",
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


        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
