






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
public class _edu_isi_bmkeg_kefed_ui_NewKefedTemplateDialogWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_NewKefedTemplateDialogWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.NewKefedTemplateDialog;
        (edu.isi.bmkeg.kefed.ui.NewKefedTemplateDialog).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_NewKefedTemplateDialogWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.binding.IBindingClient;
        import mx.containers.TitleWindow;
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import mx.containers.Form;
        import mx.core.IPropertyChangeNotifier;
        import mx.binding.BindingManager;
        import mx.containers.FormItem;
        import mx.controls.TextInput;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("editable",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=4
        [
        bindings[0],
        bindings[1],
        bindings[2],
        bindings[3]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
