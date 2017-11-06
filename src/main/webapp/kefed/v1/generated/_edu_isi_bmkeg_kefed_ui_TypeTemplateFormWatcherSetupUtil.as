






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
public class _edu_isi_bmkeg_kefed_ui_TypeTemplateFormWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _edu_isi_bmkeg_kefed_ui_TypeTemplateFormWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import edu.isi.bmkeg.kefed.ui.TypeTemplateForm;
        (edu.isi.bmkeg.kefed.ui.TypeTemplateForm).watcherSetupUtil = new _edu_isi_bmkeg_kefed_ui_TypeTemplateFormWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.controls.ComboBox;
        import edu.isi.bmkeg.kefed.ontology.OntologySearchInterface;
        import flash.events.IEventDispatcher;
        import mx.states.AddChild;
        import mx.containers.HBox;
        import edu.isi.bmkeg.kefed.elements.KefedBaseValueTemplate;
        import mx.binding.BindingManager;
        import mx.controls.Spacer;
        import flash.events.MouseEvent;
        import mx.managers.PopUpManager;
        import mx.containers.VBox;
        import mx.states.State;
        import mx.core.IFactory;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import edu.isi.bmkeg.kefed.ui.FieldTemplateTabs;
        import mx.controls.Button;
        import edu.isi.bmkeg.kefed.elements.KefedFieldTemplate;
        import mx.binding.utils.BindingUtils;
        import mx.binding.IBindingClient;
        import edu.isi.bmkeg.kefed.elements.KefedFullValueTemplate;
        import mx.events.ListEvent;
        import mx.controls.Label;
        import mx.core.IPropertyChangeNotifier;
        import mx.utils.StringUtil;
        import mx.collections.ArrayCollection;
        import mx.controls.dataGridClasses.DataGridColumn;
        import mx.controls.TextInput;
        import mx.controls.DataGrid;
        import mx.core.mx_internal;
        import mx.core.IDeferredInstance;
        import mx.core.ClassFactory;
        import edu.isi.bmkeg.kefed.ui.AllowedValuesListComponent;
        import mx.core.DeferredInstanceFromFunction;
        import edu.isi.bmkeg.kefed.elements.KefedObject;
        import mx.controls.listClasses.ListBase;
        import flash.events.EventDispatcher;
        import __AS3__.vec.Vector;
        import flash.events.Event;
        import mx.events.FlexEvent;
        import mx.core.UIComponentDescriptor;

        // writeWatcher id=9 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true

        // writeWatcher id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[3] = new mx.binding.PropertyWatcher("myType",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=3 size=24
        [
        bindings[1],
        bindings[2],
        bindings[3],
        bindings[5],
        bindings[6],
        bindings[8],
        bindings[9],
        bindings[11],
        bindings[12],
        bindings[13],
        bindings[15],
        bindings[16],
        bindings[18],
        bindings[19],
        bindings[20],
        bindings[22],
        bindings[24],
        bindings[26],
        bindings[28],
        bindings[30],
        bindings[32],
        bindings[34],
        bindings[35],
        bindings[37]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[6] = new mx.binding.PropertyWatcher("allowedValues",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=6 size=4
        [
        bindings[9],
        bindings[13],
        bindings[16],
        bindings[20]
        ]
,
                                                                 null
);

        // writeWatcher id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[8] = new mx.binding.PropertyWatcher("minimumValue",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=8 size=3
        [
        bindings[22],
        bindings[26],
        bindings[30]
        ]
,
                                                                 null
);

        // writeWatcher id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[10] = new mx.binding.PropertyWatcher("maximumValue",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=10 size=3
        [
        bindings[24],
        bindings[28],
        bindings[32]
        ]
,
                                                                 null
);

        // writeWatcher id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[11] = new mx.binding.PropertyWatcher("allowedUnits",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=11 size=1
        [
        bindings[35]
        ]
,
                                                                 null
);

        // writeWatcher id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[12] = new mx.binding.PropertyWatcher("multipleSlotFields",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=12 size=1
        [
        bindings[37]
        ]
,
                                                                 null
);

        // writeWatcher id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[4] = new mx.binding.PropertyWatcher("valueTypeName",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=4 size=1
        [
        bindings[1]
        ]
,
                                                                 null
);

        // writeWatcher id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[7] = new mx.binding.PropertyWatcher("termLookupFunction",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=7 size=2
        [
        bindings[11],
        bindings[18]
        ]
,
                                                                 null
);

        // writeWatcher id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[5] = new mx.binding.PropertyWatcher("allowedPatterns",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=5 size=2
        [
        bindings[3],
        bindings[6]
        ]
,
                                                                 null
);

        // writeWatcher id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[15] = new mx.binding.PropertyWatcher("termLookupService",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=15 size=1
        [
        bindings[40]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[13] = new mx.binding.PropertyWatcher("multislotGrid",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=13 size=2
        [
        bindings[39],
        bindings[42]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[14] = new mx.binding.PropertyWatcher("selectedItem",
                                                                             {
                change: true,
                valueCommit: true
            }
,
                                                                         // writeWatcherListeners id=14 size=2
        [
        bindings[39],
        bindings[42]
        ]
,
                                                                 null
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("monotonic",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=10
        [
        bindings[0],
        bindings[4],
        bindings[7],
        bindings[10],
        bindings[14],
        bindings[17],
        bindings[21],
        bindings[36],
        bindings[38],
        bindings[41]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("typeOptions",
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

        // writeWatcher id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true


        // writeWatcherBottom id=9 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





        // writeWatcherBottom id=3 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].updateParent(target);

 





        // writeWatcherBottom id=6 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[6]);

 





        // writeWatcherBottom id=8 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[8]);

 





        // writeWatcherBottom id=10 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[10]);

 





        // writeWatcherBottom id=11 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[11]);

 





        // writeWatcherBottom id=12 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[12]);

 





        // writeWatcherBottom id=4 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[4]);

 





        // writeWatcherBottom id=7 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[7]);

 





        // writeWatcherBottom id=5 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[3].addChild(watchers[5]);

 





        // writeWatcherBottom id=15 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[15].updateParent(target);

 





        // writeWatcherBottom id=13 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[13].updateParent(target);

 





        // writeWatcherBottom id=14 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[13].addChild(watchers[14]);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=2 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher

 





    }
}

}
