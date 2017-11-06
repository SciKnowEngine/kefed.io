






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
public class _edu_isi_bmkeg_kefed_ui_OntologyIdFormItemWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_OntologyIdFormItemWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.OntologyIdFormItem;
        (edu.isi.bmkeg.kefed.ui.OntologyIdFormItem).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_OntologyIdFormItemWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import com.kapit.diagram.view.DiagramObject;
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import mx.binding.BindingManager;
        import mx.controls.Spacer;
        import flash.events.MouseEvent;
        import mx.managers.PopUpManager;
        import mx.containers.VBox;
        import mx.core.IFactory;
        import com.kapit.diagram.view.DiagramView;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import mx.controls.Button;
        import edu.isi.bmkeg.kefed.elements.KefedFieldTemplate;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.ontology.OntologyTermLookupDialog;
        import mx.events.ListEvent;
        import mx.controls.TileList;
        import mx.core.Application;
        import edu.isi.bmkeg.kefed.ontology.OntologySearchEvent;
        import edu.isi.bmkeg.kefed.elements.IKefedNamedObject;
        import mx.core.IPropertyChangeNotifier;
        import mx.collections.ArrayCollection;
        import mx.controls.dataGridClasses.DataGridColumn;
        import edu.isi.bmkeg.kefed.ontology.OntologyTermReference;
        import mx.controls.DataGrid;
        import mx.events.CloseEvent;
        import mx.core.mx_internal;
        import flare.vis.data.DataList;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import flash.events.EventDispatcher;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("termList",
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

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("selectedIndex",
                                                                             {
                change: true,
                valueCommit: true
            }
,
                                                                         // writeWatcherListeners id=3 size=1
        [
        bindings[2]
        ]
,
                                                                 null
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("myObject",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=2
        [
        bindings[0],
        bindings[1]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("ontologyIds",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=2
        [
        bindings[0],
        bindings[1]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].addChild(watchers[3]);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].addChild(watchers[1]);

 





    }
}

}
