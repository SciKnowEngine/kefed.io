






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
public class _edu_isi_bmkeg_domains_neuralconnectivity_NeuralConnectivityWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_domains_neuralconnectivity_NeuralConnectivityWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity;
        (edu.isi.bmkeg.domains.neuralconnectivity.NeuralConnectivity).watcherSetupUtil = new _edu_isi_bmkeg_domains_neuralconnectivity_NeuralConnectivityWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.states.AddChild;
        import mx.core.FlexGlobals;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.rpc.http.HTTPService;
        import mx.controls.Spacer;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import mx.controls.Alert;
        import mx.rpc.events.ResultEvent;
        import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
        import mx.events.ListEvent;
        import mx.core.Application;
        import mx.controls.dataGridClasses.DataGridColumn;
        import mx.formatters.NumberFormatter;
        import mx.controls.DataGrid;
        import mx.controls.Text;
        import mx.core.IDeferredInstance;
        import mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer;
        import mx.controls.AdvancedDataGrid;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import mx.rpc.soap.mxml.Operation;
        import mx.containers.VDividedBox;
        import flash.events.IEventDispatcher;
        import mx.rpc.http.mxml.HTTPService;
        import mx.containers.HBox;
        import edu.isi.bmkeg.utils.powerloom.PL;
        import mx.rpc.soap.mxml.WebService;
        import mx.binding.BindingManager;
        import mx.states.State;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.HRule;
        import flash.utils.getTimer;
        import flash.net.navigateToURL;
        import mx.binding.IBindingClient;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.formatters.NumberBaseRoundType;
        import mx.containers.Panel;
        import mx.core.mx_internal;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;
        import mx.rpc.soap.WebService;

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("evidenceCollection",
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

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("content",
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

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true


        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





    }
}

}
