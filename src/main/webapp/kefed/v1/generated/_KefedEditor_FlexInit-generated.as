package {
import flash.display.DisplayObject;
import flash.utils.*;
import mx.core.IFlexModuleFactory;
import mx.styles.IStyleManager2;
import mx.events.Request;
import mx.styles.StyleManagerImpl;
import mx.managers.systemClasses.ChildManager;
import mx.core.TextFieldFactory; TextFieldFactory;
import flash.system.*
import mx.accessibility.ComboBoxAccImpl;
import mx.accessibility.AdvancedDataGridAccImpl;
import mx.accessibility.RadioButtonAccImpl;
import mx.accessibility.UIComponentAccProps;
import mx.accessibility.ButtonAccImpl;
import mx.accessibility.AccordionHeaderAccImpl;
import mx.accessibility.TitleWindowAccImpl;
import mx.accessibility.CheckBoxAccImpl;
import mx.accessibility.ListBaseAccImpl;
import mx.accessibility.LabelAccImpl;
import mx.accessibility.SliderAccImpl;
import mx.accessibility.PanelAccImpl;
import mx.accessibility.AlertAccImpl;
import mx.accessibility.TabBarAccImpl;
import mx.accessibility.DataGridAccImpl;
import mx.accessibility.ListAccImpl;
import mx.accessibility.ComboBaseAccImpl;
import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import mx.managers.SystemManagerGlobals;
import mx.resources.ResourceManager;
import mx.collections.ArrayCollection;
import mx.collections.ArrayList;
import mx.messaging.config.ConfigMap;
import mx.messaging.messages.AcknowledgeMessage;
import mx.messaging.messages.AcknowledgeMessageExt;
import mx.messaging.messages.AsyncMessage;
import mx.messaging.messages.AsyncMessageExt;
import mx.messaging.messages.CommandMessage;
import mx.messaging.messages.CommandMessageExt;
import mx.messaging.messages.ErrorMessage;
import mx.messaging.messages.HTTPRequestMessage;
import mx.messaging.messages.MessagePerformanceInfo;
import mx.messaging.messages.SOAPMessage;
import mx.utils.ObjectProxy;
import mx.effects.EffectManager;
import mx.core.mx_internal;
[ResourceBundle("SharedResources")]
[ResourceBundle("collections")]
[ResourceBundle("components")]
[ResourceBundle("containers")]
[ResourceBundle("controls")]
[ResourceBundle("core")]
[ResourceBundle("datamanagement")]
[ResourceBundle("effects")]
[ResourceBundle("formatters")]
[ResourceBundle("layout")]
[ResourceBundle("logging")]
[ResourceBundle("messaging")]
[ResourceBundle("rpc")]
[ResourceBundle("skins")]
[ResourceBundle("states")]
[ResourceBundle("styles")]
[ResourceBundle("utils")]
[ResourceBundle("validators")]

[Mixin]
public class _KefedEditor_FlexInit
{
   public function _KefedEditor_FlexInit()
   {
       super();
   }
   public static function init(fbs:IFlexModuleFactory):void
   {
       new ChildManager(fbs);
       var styleManager:IStyleManager2;
       styleManager = new StyleManagerImpl(fbs);
       EffectManager.mx_internal::registerEffectTrigger("addedEffect", "added");
       EffectManager.mx_internal::registerEffectTrigger("completeEffect", "complete");
       EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect", "creationComplete");
       EffectManager.mx_internal::registerEffectTrigger("focusInEffect", "focusIn");
       EffectManager.mx_internal::registerEffectTrigger("focusOutEffect", "focusOut");
       EffectManager.mx_internal::registerEffectTrigger("hideEffect", "hide");
       EffectManager.mx_internal::registerEffectTrigger("itemsChangeEffect", "itemsChange");
       EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect", "mouseDown");
       EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect", "mouseUp");
       EffectManager.mx_internal::registerEffectTrigger("moveEffect", "move");
       EffectManager.mx_internal::registerEffectTrigger("removedEffect", "removed");
       EffectManager.mx_internal::registerEffectTrigger("resizeEffect", "resize");
       EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect", "resizeEnd");
       EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect", "resizeStart");
       EffectManager.mx_internal::registerEffectTrigger("rollOutEffect", "rollOut");
       EffectManager.mx_internal::registerEffectTrigger("rollOverEffect", "rollOver");
       EffectManager.mx_internal::registerEffectTrigger("showEffect", "show");
       // trace("Flex accessibility startup: " + Capabilities.hasAccessibility);
       if (Capabilities.hasAccessibility) {
          mx.accessibility.ComboBoxAccImpl.enableAccessibility();
          mx.accessibility.AdvancedDataGridAccImpl.enableAccessibility();
          mx.accessibility.RadioButtonAccImpl.enableAccessibility();
          mx.accessibility.UIComponentAccProps.enableAccessibility();
          mx.accessibility.ButtonAccImpl.enableAccessibility();
          mx.accessibility.AccordionHeaderAccImpl.enableAccessibility();
          mx.accessibility.TitleWindowAccImpl.enableAccessibility();
          mx.accessibility.CheckBoxAccImpl.enableAccessibility();
          mx.accessibility.ListBaseAccImpl.enableAccessibility();
          mx.accessibility.LabelAccImpl.enableAccessibility();
          mx.accessibility.SliderAccImpl.enableAccessibility();
          mx.accessibility.PanelAccImpl.enableAccessibility();
          mx.accessibility.AlertAccImpl.enableAccessibility();
          mx.accessibility.TabBarAccImpl.enableAccessibility();
          mx.accessibility.DataGridAccImpl.enableAccessibility();
          mx.accessibility.ListAccImpl.enableAccessibility();
          mx.accessibility.ComboBaseAccImpl.enableAccessibility();
       }
       // mx.collections.ArrayCollection
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.io.ArrayCollection") != mx.collections.ArrayCollection) 
           { 
               flash.net.registerClassAlias("flex.messaging.io.ArrayCollection", mx.collections.ArrayCollection); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.collections.ArrayCollection","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.io.ArrayCollection", mx.collections.ArrayCollection); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.collections.ArrayCollection","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.collections.ArrayList
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.io.ArrayList") != mx.collections.ArrayList) 
           { 
               flash.net.registerClassAlias("flex.messaging.io.ArrayList", mx.collections.ArrayList); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.collections.ArrayList","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.io.ArrayList", mx.collections.ArrayList); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.collections.ArrayList","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.config.ConfigMap
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.config.ConfigMap") != mx.messaging.config.ConfigMap) 
           { 
               flash.net.registerClassAlias("flex.messaging.config.ConfigMap", mx.messaging.config.ConfigMap); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.config.ConfigMap","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.config.ConfigMap", mx.messaging.config.ConfigMap); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.config.ConfigMap","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.AcknowledgeMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.AcknowledgeMessage") != mx.messaging.messages.AcknowledgeMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.AcknowledgeMessage", mx.messaging.messages.AcknowledgeMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.AcknowledgeMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.AcknowledgeMessage", mx.messaging.messages.AcknowledgeMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.AcknowledgeMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.AcknowledgeMessageExt
       try 
       { 
           if (flash.net.getClassByAlias("DSK") != mx.messaging.messages.AcknowledgeMessageExt) 
           { 
               flash.net.registerClassAlias("DSK", mx.messaging.messages.AcknowledgeMessageExt); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.AcknowledgeMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("DSK", mx.messaging.messages.AcknowledgeMessageExt); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.AcknowledgeMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.AsyncMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.AsyncMessage") != mx.messaging.messages.AsyncMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.AsyncMessage", mx.messaging.messages.AsyncMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.AsyncMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.AsyncMessage", mx.messaging.messages.AsyncMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.AsyncMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.AsyncMessageExt
       try 
       { 
           if (flash.net.getClassByAlias("DSA") != mx.messaging.messages.AsyncMessageExt) 
           { 
               flash.net.registerClassAlias("DSA", mx.messaging.messages.AsyncMessageExt); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.AsyncMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("DSA", mx.messaging.messages.AsyncMessageExt); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.AsyncMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.CommandMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.CommandMessage") != mx.messaging.messages.CommandMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.CommandMessage", mx.messaging.messages.CommandMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.CommandMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.CommandMessage", mx.messaging.messages.CommandMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.CommandMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.CommandMessageExt
       try 
       { 
           if (flash.net.getClassByAlias("DSC") != mx.messaging.messages.CommandMessageExt) 
           { 
               flash.net.registerClassAlias("DSC", mx.messaging.messages.CommandMessageExt); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.CommandMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("DSC", mx.messaging.messages.CommandMessageExt); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.CommandMessageExt","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.ErrorMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.ErrorMessage") != mx.messaging.messages.ErrorMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.ErrorMessage", mx.messaging.messages.ErrorMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.ErrorMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.ErrorMessage", mx.messaging.messages.ErrorMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.ErrorMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.HTTPRequestMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.HTTPMessage") != mx.messaging.messages.HTTPRequestMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.HTTPMessage", mx.messaging.messages.HTTPRequestMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.HTTPRequestMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.HTTPMessage", mx.messaging.messages.HTTPRequestMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.HTTPRequestMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.MessagePerformanceInfo
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.MessagePerformanceInfo") != mx.messaging.messages.MessagePerformanceInfo) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.MessagePerformanceInfo", mx.messaging.messages.MessagePerformanceInfo); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.MessagePerformanceInfo","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.MessagePerformanceInfo", mx.messaging.messages.MessagePerformanceInfo); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.MessagePerformanceInfo","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.messaging.messages.SOAPMessage
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.messages.SOAPMessage") != mx.messaging.messages.SOAPMessage) 
           { 
               flash.net.registerClassAlias("flex.messaging.messages.SOAPMessage", mx.messaging.messages.SOAPMessage); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.messaging.messages.SOAPMessage","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.messages.SOAPMessage", mx.messaging.messages.SOAPMessage); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.messaging.messages.SOAPMessage","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       // mx.utils.ObjectProxy
       try 
       { 
           if (flash.net.getClassByAlias("flex.messaging.io.ObjectProxy") != mx.utils.ObjectProxy) 
           { 
               flash.net.registerClassAlias("flex.messaging.io.ObjectProxy", mx.utils.ObjectProxy); 
               if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
               { 
                   trace(ResourceManager.getInstance().getString( "core", 
                         "remoteClassMemoryLeak",
                         ["mx.utils.ObjectProxy","KefedEditor","_KefedEditor_FlexInit"]));
               } 
           } 
       } 
       catch (e:Error) 
       { 
           flash.net.registerClassAlias("flex.messaging.io.ObjectProxy", mx.utils.ObjectProxy); 
           if (fbs != SystemManagerGlobals.topLevelSystemManagers[0]) 
           { 
               trace(ResourceManager.getInstance().getString( "core", 
                     "remoteClassMemoryLeak",
                     ["mx.utils.ObjectProxy","KefedEditor","_KefedEditor_FlexInit"]));
           } 
       } 

       var styleNames:Array = ["paragraphStartIndent", "kerning", "breakOpportunity", "alternatingItemColors", "leading", "wordSpacing", "labelWidth", "layoutDirection", "ligatureLevel", "dropShadowColor", "shadowColor", "downColor", "interactionMode", "dominantBaseline", "fontSharpness", "justificationStyle", "footerColors", "whiteSpaceCollapse", "textDecoration", "fontStyle", "digitWidth", "indicatorGap", "focusColor", "themeColor", "fontSize", "textAlignLast", "selectionDisabledColor", "trackingRight", "showErrorSkin", "backgroundDisabledColor", "unfocusedTextSelectionColor", "textAlpha", "baselineShift", "textRotation", "tabStops", "dropdownBorderColor", "firstBaselineOffset", "lineThrough", "symbolColor", "depthColors", "focusedTextSelectionColor", "disabledColor", "alignmentBaseline", "modalTransparencyColor", "modalTransparencyDuration", "proposedColor", "modalTransparency", "lineHeight", "typographicCase", "fontAntiAliasType", "selectionColor", "cffHinting", "contentBackgroundAlpha", "fontFamily", "digitCase", "textSelectedColor", "clearFloats", "paragraphEndIndent", "disabledIconColor", "strokeColor", "fontWeight", "dividerColor", "textAlign", "accentColor", "sortFontStyle", "headerColors", "contentBackgroundColor", "fontLookup", "chromeColor", "verticalGridLineColor", "listAutoPadding", "blockProgression", "listStyleType", "textRollOverColor", "horizontalGridLineColor", "strokeWidth", "fontGridFitType", "errorColor", "paragraphSpaceAfter", "justificationRule", "color", "textShadowColor", "paragraphSpaceBefore", "textIndent", "locale", "barColor", "fontThickness", "touchDelay", "textShadowAlpha", "sortFontFamily", "renderingMode", "textJustify", "sortFontWeight", "direction", "separatorColor", "letterSpacing", "trackingLeft", "rollOverColor", "modalTransparencyBlur", "listStylePosition", "iconColor", "inactiveTextSelectionColor", "leadingModel", "sortFontSize", "showErrorTip"];

       for (var i:int = 0; i < styleNames.length; i++)
       {
          styleManager.registerInheritingStyle(styleNames[i]);
       }
   }
}  // FlexInit
}  // package
