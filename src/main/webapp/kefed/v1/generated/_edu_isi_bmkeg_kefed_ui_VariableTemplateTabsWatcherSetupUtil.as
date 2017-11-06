






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
public class _edu_isi_bmkeg_kefed_ui_VariableTemplateTabsWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_VariableTemplateTabsWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.VariableTemplateTabs;
        (edu.isi.bmkeg.kefed.ui.VariableTemplateTabs).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_VariableTemplateTabsWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import edu.isi.bmkeg.kefed.ui.TypeTemplateForm;
        import flash.events.IEventDispatcher;
        import mx.containers.HBox;
        import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
        import mx.containers.Form;
        import mx.binding.BindingManager;
        import edu.isi.bmkeg.kefed.ui.NotesComponent;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import edu.isi.bmkeg.kefed.ui.NamedObjectTemplate;
        import edu.isi.bmkeg.kefed.ui.OntologyIdFormItem;
        import mx.binding.IBindingClient;
        import mx.containers.TabNavigator;
        import edu.isi.bmkeg.kefed.elements.IKefedNamedObject;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.controls.TextInput;
        import edu.isi.bmkeg.kefed.elements.IKefedAnnotatedObject;
        import mx.core.mx_internal;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import mx.core.DeferredInstanceFromFunction;
        import flash.events.EventDispatcher;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("termLookupService",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=5 size=3
        [
        bindings[6],
        bindings[7],
        bindings[9]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("monotonic",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=3
        [
        bindings[2],
        bindings[3],
        bindings[4]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("label",
                                                                             {
                labelChanged: true
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
        watchers[1] = new mx.binding.PropertyWatcher("myObject",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=4
        [
        bindings[1],
        bindings[5],
        bindings[8],
        bindings[10]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("nameValue",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=1
        [
        bindings[1]
        ]
,
                                                                 null
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("valueType",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=1
        [
        bindings[5]
        ]
,
                                                                 null
);


        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[5].updateParent(target);

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].addChild(watchers[2]);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].addChild(watchers[4]);

 





    }
}

}
