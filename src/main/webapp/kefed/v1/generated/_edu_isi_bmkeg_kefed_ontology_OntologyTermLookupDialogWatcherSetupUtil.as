






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
public class _edu_isi_bmkeg_kefed_ontology_OntologyTermLookupDialogWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ontology_OntologyTermLookupDialogWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialog;
        (edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialog).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ontology_OntologyTermLookupDialogWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import mx.controls.RadioButton;
        import mx.core.FlexGlobals;
        import edu.isi.bmkeg.kefed.ui.UiUtil;
        import mx.controls.Spacer;
        import flash.events.MouseEvent;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import edu.isi.bmkeg.kefed.ui.SimpleInputWindow;
        import mx.controls.Alert;
        import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxRenderer;
        import mx.rpc.events.ResultEvent;
        import mx.containers.TitleWindow;
        import mx.events.ListEvent;
        import mx.core.Application;
        import mx.controls.dataGridClasses.DataGridColumn;
        import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialogInnerClass1;
        import edu.isi.bmkeg.kefed.ontology.OntologyTermReference;
        import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialogInnerClass0;
        import mx.formatters.NumberFormatter;
        import mx.controls.CheckBox;
        import mx.core.IDeferredInstance;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import flash.events.EventDispatcher;
        import mx.rpc.events.FaultEvent;
        import flash.events.Event;
        import mx.core.UIComponentDescriptor;
        import mx.containers.VDividedBox;
        import mx.controls.RadioButtonGroup;
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import mx.binding.BindingManager;
        import mx.managers.PopUpManager;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.ontology.OntologySearchEvent;
        import edu.isi.bmkeg.kefed.elements.IKefedNamedObject;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.TextInput;
        import mx.events.CloseEvent;
        import mx.containers.Panel;
        import mx.controls.TextArea;
        import mx.core.mx_internal;
        import edu.isi.bmkeg.utils.CheckBoxDataGrid.CheckBoxDataGrid;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import __AS3__.vec.Vector;
        import mx.events.FlexEvent;

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("exactControl",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=2
        [
        bindings[2],
        bindings[3]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("currentSearchResults",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=1
        [
        bindings[4]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("exact",
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
        watchers[1] = new mx.binding.PropertyWatcher("currentSearchTerm",
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


        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





    }
}

}
