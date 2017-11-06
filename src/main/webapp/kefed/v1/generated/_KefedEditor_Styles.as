
package 
{

import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSCondition;
import mx.styles.CSSSelector;
import mx.styles.CSSStyleDeclaration;
import mx.styles.IStyleManager2;
import mx.utils.ObjectUtil;
import mx.skins.spark.PanelBorderSkin;
import spark.skins.spark.FocusSkin;
import mx.skins.spark.ScrollBarThumbSkin;
import mx.skins.spark.SliderThumbSkin;
import mx.skins.spark.SliderTrackHighlightSkin;
import mx.skins.spark.AccordionHeaderSkin;
import mx.skins.halo.DataGridHeaderBackgroundSkin;
import mx.skins.spark.ScrollBarTrackSkin;
import mx.skins.halo.BrokenImageBorderSkin;
import mx.skins.halo.DataGridHeaderSeparator;
import mx.skins.spark.RadioButtonSkin;
import mx.skins.spark.ButtonSkin;
import mx.core.UITextField;
import mx.skins.spark.TextInputBorderSkin;
import mx.skins.halo.DefaultDragImage;
import mx.core.UIComponent;
import mx.skins.halo.DataGridColumnResizeSkin;
import spark.skins.spark.ErrorSkin;
import mx.skins.halo.HaloFocusRect;
import mx.skins.spark.BorderSkin;
import mx.skins.spark.DataGridSortArrow;
import mx.skins.halo.ToolTipBorder;
import mx.skins.spark.ButtonBarLastButtonSkin;
import mx.skins.spark.EditableComboBoxSkin;
import mx.skins.halo.ListDropIndicator;
import mx.skins.spark.ContainerBorderSkin;
import mx.skins.spark.ScrollBarDownButtonSkin;
import mx.skins.halo.AdvancedDataGridHeaderHorizontalSeparator;
import mx.skins.spark.DataGridHeaderSeparatorSkin;
import mx.skins.spark.DataGridHeaderBackgroundSkin;
import mx.skins.halo.DataGridSortArrow;
import mx.skins.spark.SliderTrackSkin;
import mx.skins.halo.DataGridColumnDropIndicator;
import mx.skins.spark.DefaultButtonSkin;
import mx.skins.halo.BusyCursor;
import mx.skins.spark.ButtonBarFirstButtonSkin;
import mx.skins.spark.ScrollBarUpButtonSkin;
import mx.skins.spark.TabSkin;
import mx.skins.spark.ComboBoxSkin;
import mx.skins.spark.ButtonBarMiddleButtonSkin;
import mx.skins.spark.CheckBoxSkin;
[ExcludeClass]

public class _KefedEditor_Styles
{
    [Embed(symbol='mx.skins.cursor.DragCopy', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='515')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragCopy_604210573:Class;
    [Embed(symbol='CloseButtonDisabled', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='1325')]
    private static var _embed_css_Assets_swf__2119559421_CloseButtonDisabled_1127838419:Class;
    [Embed(symbol='TreeFolderOpen', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='38')]
    private static var _embed_css_Assets_swf__2119559421_TreeFolderOpen_1351077251:Class;
    [Embed(symbol='mx.skins.cursor.DragMove', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='518')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragMove_604498153:Class;
    [Embed(symbol='TreeNodeIcon', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='36')]
    private static var _embed_css_Assets_swf__2119559421_TreeNodeIcon_1282635184:Class;
    [Embed(symbol='mx.skins.cursor.DragLink', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='517')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragLink_604472578:Class;
    [Embed(symbol='CloseButtonUp', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='1328')]
    private static var _embed_css_Assets_swf__2119559421_CloseButtonUp_228948428:Class;
    [Embed(symbol='mx.skins.cursor.VBoxDivider', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='503')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_VBoxDivider_871893710:Class;
    [Embed(symbol='CloseButtonOver', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='1327')]
    private static var _embed_css_Assets_swf__2119559421_CloseButtonOver_1301833045:Class;
    [Embed(symbol='CloseButtonDown', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='1326')]
    private static var _embed_css_Assets_swf__2119559421_CloseButtonDown_1466003011:Class;
    [Embed(symbol='TreeFolderClosed', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='37')]
    private static var _embed_css_Assets_swf__2119559421_TreeFolderClosed_1234289295:Class;
    [Embed(symbol='TreeDisclosureOpen', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='35')]
    private static var _embed_css_Assets_swf__2119559421_TreeDisclosureOpen_1790048388:Class;
    [Embed(symbol='TreeDisclosureClosed', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='34')]
    private static var _embed_css_Assets_swf__2119559421_TreeDisclosureClosed_1374725410:Class;
    [Embed(symbol='__brokenImage', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='1169')]
    private static var _embed_css_Assets_swf__2119559421___brokenImage_860030451:Class;
    [Embed(symbol='mx.skins.cursor.DragReject', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='519')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragReject_883041961:Class;
    [Embed(symbol='cursorStretch', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/advancedgrids.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='32')]
    private static var _embed_css_Assets_swf__2119559421_cursorStretch_1675390426:Class;
    [Embed(symbol='mx.skins.BoxDividerSkin', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='499')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_BoxDividerSkin_1327404205:Class;
    [Embed(symbol='mx.skins.cursor.HBoxDivider', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='501')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_HBoxDivider_2122981104:Class;
    [Embed(symbol='mx.skins.cursor.BusyCursor', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='194')]
    private static var _embed_css_Assets_swf__2119559421_mx_skins_cursor_BusyCursor_286031139:Class;
    [Embed(symbol='mx.containers.FormItem.Required', _file='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/mx/mx.swc$defaults.css', original='Assets.swf', _resolvedSource='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', source='/Applications/Adobe Flash Builder 4.5/sdks/4.5.1/frameworks/libs/framework.swc$Assets.swf', _line='577')]
    private static var _embed_css_Assets_swf__2119559421_mx_containers_FormItem_Required_1967713164:Class;
    public static function init(fbs:IFlexModuleFactory):void
    {
        var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
        

        var conditions:Array = null;
        var condition:CSSCondition = null;
        var selector:CSSSelector = null;
        var style:CSSStyleDeclaration;
        var effects:Array;
        
        var mergedStyle:CSSStyleDeclaration;

        
        //
        // global
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("global", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("global");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paragraphStartIndent = 0;
                this.shadowDistance = 2;
                this.breakOpportunity = "auto";
                this.kerning = "default";
                this.selectionDuration = 250;
                this.leading = 2;
                this.paddingRight = 0;
                this.rollOverOpenDelay = 200;
                this.liveDragging = true;
                this.slideDuration = 300;
                this.iconPlacement = "left";
                this.textFieldClass = mx.core.UITextField;
                this.layoutDirection = "ltr";
                this.borderStyle = "inset";
                this.ligatureLevel = "common";
                this.repeatDelay = 500;
                this.dropShadowColor = 0x000000;
                this.shadowColor = 0xeeeeee;
                this.verticalAlign = "top";
                this.interactionMode = "mouse";
                this.dominantBaseline = "auto";
                this.focusAlpha = 0.55;
                this.fontSharpness = 0;
                this.justificationStyle = "auto";
                this.whiteSpaceCollapse = "collapse";
                this.textDecoration = "none";
                this.fontStyle = "normal";
                this.shadowDirection = "center";
                this.version = "4.0.0";
                this.horizontalScrollPolicy = "auto";
                this.digitWidth = "default";
                this.indicatorGap = 14;
                this.lineBreak = "toFit";
                this.borderCapColor = 0x919999;
                this.focusColor = 0x70b2ee;
                this.themeColor = 0x70b2ee;
                this.fontSize = 12;
                this.textAlignLast = "start";
                this.paddingLeft = 0;
                this.selectionDisabledColor = 0xdddddd;
                this.trackingRight = 0;
                this.smoothScrolling = true;
                this.showErrorSkin = true;
                this.useRollOver = true;
                this.unfocusedTextSelectionColor = 0xe8e8e8;
                this.backgroundAlpha = 1.0;
                this.baselineShift = 0;
                this.textAlpha = 1.0;
                this.verticalGap = 6;
                this.closeDuration = 50;
                this.disabledAlpha = 0.5;
                this.fillColor = 0xffffff;
                this.roundedBottomCorners = true;
                this.highlightAlphas = [0.3, 0];
                this.horizontalAlign = "left";
                this.verticalGridLines = true;
                this.textRotation = "auto";
                this.dropShadowVisible = false;
                this.backgroundSize = "auto";
                this.horizontalGridLines = false;
                this.tabStops = null;
                this.firstBaselineOffset = "auto";
                this.focusRoundedCorners = "tl tr bl br";
                this.lineThrough = false;
                this.focusSkin = mx.skins.halo.HaloFocusRect;
                this.focusedTextSelectionColor = 0xa8c6ee;
                this.symbolColor = 0x000000;
                this.borderAlpha = 1.0;
                this.filled = true;
                this.openDuration = 1;
                this.disabledColor = 0xaab3b3;
                this.alignmentBaseline = "useDominantBaseline";
                this.modalTransparencyColor = 0xdddddd;
                this.embedFonts = false;
                this.modalTransparencyDuration = 100;
                this.modalTransparency = 0.5;
                this.backgroundImageFillMode = "scale";
                this.lineHeight = "120%";
                this.typographicCase = "default";
                this.borderColor = 0x696969;
                this.fontAntiAliasType = "advanced";
                this.selectionColor = 0xa8c6ee;
                this.cffHinting = "horizontalStem";
                this.contentBackgroundAlpha = 1;
                this.cornerRadius = 2;
                this.borderThickness = 1;
                this.fontFamily = "Arial";
                this.indentation = 17;
                this.paddingBottom = 0;
                this.digitCase = "default";
                this.repeatInterval = 35;
                this.textSelectedColor = 0;
                this.paragraphEndIndent = 0;
                this.disabledIconColor = 0x999999;
                this.fontWeight = "normal";
                this.borderVisible = true;
                this.focusBlendMode = "normal";
                this.textAlign = "start";
                this.accentColor = 0x0099ff;
                this.shadowCapColor = 0xd5dddd;
                this.contentBackgroundColor = 0xffffff;
                this.fontLookup = "embeddedCFF";
                this.chromeColor = 0xcccccc;
                this.columnGap = 20;
                this.focusThickness = 2;
                this.verticalGridLineColor = 0xd5dddd;
                this.blockProgression = "tb";
                this.textRollOverColor = 0;
                this.fillAlphas = [0.6, 0.4, 0.75, 0.65];
                this.horizontalGridLineColor = 0xf7f7f7;
                this.strokeWidth = 1;
                this.fontGridFitType = "pixel";
                this.errorColor = 0xfe0000;
                this.paragraphSpaceAfter = 0;
                this.justificationRule = "auto";
                this.borderSides = "left top right bottom";
                this.color = 0x000000;
                this.buttonColor = 0x6f7777;
                this.fillColors = [0xffffff, 0xcccccc, 0xffffff, 0xeeeeee];
                this.paragraphSpaceBefore = 0;
                this.locale = "en";
                this.textIndent = 0;
                this.fontThickness = 0;
                this.renderingMode = "cff";
                this.textJustify = "interWord";
                this.fullScreenHideControlsDelay = 3000;
                this.columnWidth = "auto";
                this.paddingTop = 0;
                this.direction = "ltr";
                this.fixedThumbSize = false;
                this.caretColor = 0x0167ff;
                this.letterSpacing = 0;
                this.borderWeight = 1;
                this.columnCount = "auto";
                this.bevel = true;
                this.verticalScrollPolicy = "auto";
                this.trackingLeft = 0;
                this.horizontalGap = 8;
                this.rollOverColor = 0xcedbef;
                this.modalTransparencyBlur = 3;
                this.stroked = false;
                this.iconColor = 0x111111;
                this.inactiveTextSelectionColor = 0xe8e8e8;
                this.leadingModel = "auto";
                this.showErrorTip = true;
                this.autoThumbVisibility = true;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .errorTip
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "errorTip");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderColor = 0xce2929;
                this.paddingBottom = 4;
                this.color = 0xffffff;
                this.paddingRight = 4;
                this.fontSize = 10;
                this.paddingTop = 4;
                this.borderStyle = "errorTipRight";
                this.shadowColor = 0x000000;
                this.paddingLeft = 4;
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .headerDragProxyStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "headerDragProxyStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .advancedDataGridStyles
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "advancedDataGridStyles");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".advancedDataGridStyles");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .dateFieldPopup
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "dateFieldPopup");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderThickness = 1;
                this.backgroundColor = 0xffffff;
                this.dropShadowVisible = true;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .swatchPanelTextField
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "swatchPanelTextField");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.highlightColor = 0xc4cccc;
                this.backgroundColor = 0xffffff;
                this.borderColor = 0xd5dddd;
                this.borderCapColor = 0x919999;
                this.buttonColor = 0x6f7777;
                this.shadowCapColor = 0xd5dddd;
                this.paddingRight = 5;
                this.borderStyle = "inset";
                this.paddingLeft = 5;
                this.shadowColor = 0xd5dddd;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .todayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "todayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0;
                this.textAlign = "center";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .weekDayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "weekDayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.textAlign = "center";
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStatus
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStatus");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x666666;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStyles
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStyles");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.CursorManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.CursorManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.busyCursor = mx.skins.halo.BusyCursor;
                this.busyCursorBackground = _embed_css_Assets_swf__2119559421_mx_skins_cursor_BusyCursor_286031139;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.DragManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.DragManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.linkCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragLink_604472578;
                this.rejectCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragReject_883041961;
                this.copyCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragCopy_604210573;
                this.moveCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_DragMove_604498153;
                this.defaultDragImageSkin = mx.skins.halo.DefaultDragImage;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.SWFLoader
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.SWFLoader", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.SWFLoader");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.brokenImageBorderSkin = mx.skins.halo.BrokenImageBorderSkin;
                this.brokenImageSkin = _embed_css_Assets_swf__2119559421___brokenImage_860030451;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ToolTip
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ToolTip", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffcc;
                this.borderColor = 0x919999;
                this.paddingBottom = 2;
                this.paddingRight = 4;
                this.backgroundAlpha = 0.95;
                this.fontSize = 10;
                this.paddingTop = 2;
                this.borderSkin = mx.skins.halo.ToolTipBorder;
                this.borderStyle = "toolTip";
                this.paddingLeft = 4;
                this.cornerRadius = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.AdvancedDataGrid
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.AdvancedDataGrid", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.AdvancedDataGrid");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.folderClosedIcon = _embed_css_Assets_swf__2119559421_TreeFolderClosed_1234289295;
                this.disclosureOpenIcon = _embed_css_Assets_swf__2119559421_TreeDisclosureOpen_1790048388;
                this.headerDragProxyStyleName = "headerDragProxyStyle";
                this.alternatingItemColors = [0xf7f7f7, 0xffffff];
                this.sortArrowSkin = mx.skins.halo.DataGridSortArrow;
                this.sortFontStyle = "normal";
                this.paddingRight = 0;
                this.headerColors = [0xffffff, 0xe6e6e6];
                this.headerStyleName = "advancedDataGridStyles";
                this.defaultLeafIcon = _embed_css_Assets_swf__2119559421_TreeNodeIcon_1282635184;
                this.headerHorizontalSeparatorSkin = mx.skins.halo.AdvancedDataGridHeaderHorizontalSeparator;
                this.headerSeparatorSkin = mx.skins.halo.DataGridHeaderSeparator;
                this.columnResizeSkin = mx.skins.halo.DataGridColumnResizeSkin;
                this.headerBackgroundSkin = mx.skins.halo.DataGridHeaderBackgroundSkin;
                this.disclosureClosedIcon = _embed_css_Assets_swf__2119559421_TreeDisclosureClosed_1374725410;
                this.sortFontFamily = "Verdana";
                this.verticalGridLineColor = 0xcccccc;
                this.folderOpenIcon = _embed_css_Assets_swf__2119559421_TreeFolderOpen_1351077251;
                this.columnDropIndicatorSkin = mx.skins.halo.DataGridColumnDropIndicator;
                this.sortFontSize = 10;
                this.sortFontWeight = "normal";
                this.paddingLeft = 2;
                this.stretchCursor = _embed_css_Assets_swf__2119559421_cursorStretch_1675390426;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridItemRenderer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingLeft = 5;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridSortItemRenderer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.horizontalGap = 0;
                this.paddingBottom = 0;
                this.color = 0x0b333c;
                this.paddingRight = 0;
                this.icon = mx.skins.halo.DataGridSortArrow;
                this.paddingTop = 0;
                this.paddingLeft = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = 0;
                this.backgroundColor = 0xffffff;
                this.paddingBottom = 0;
                this.color = 0x0b333c;
                this.horizontalAlign = "center";
                this.paddingRight = 2;
                this.backgroundAlpha = 0.0;
                this.paddingTop = 0;
                this.paddingLeft = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.listClasses.AdvancedListBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.listClasses.AdvancedListBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.listClasses.AdvancedListBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingBottom = 2;
                this.paddingRight = 0;
                this.dropIndicatorSkin = mx.skins.halo.ListDropIndicator;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.Accordion
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.Accordion", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Accordion");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.paddingBottom = -1;
                this.paddingRight = -1;
                this.paddingTop = -1;
                this.borderSkin = mx.skins.spark.BorderSkin;
                this.borderStyle = "solid";
                this.verticalGap = -1;
                this.paddingLeft = -1;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.accordionClasses.AccordionHeader
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.accordionClasses.AccordionHeader", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.accordionClasses.AccordionHeader");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = null;
                this.textAlign = "start";
                this.paddingRight = 5;
                this.skin = mx.skins.spark.AccordionHeaderSkin;
                this.disabledSkin = null;
                this.selectedOverSkin = null;
                this.selectedDisabledSkin = null;
                this.downSkin = null;
                this.horizontalGap = 2;
                this.paddingBottom = 0;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.selectedUpSkin = null;
                this.paddingTop = 0;
                this.paddingLeft = 5;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Alert
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Alert", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingBottom = 10;
                this.paddingRight = 10;
                this.paddingTop = 2;
                this.paddingLeft = 10;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Application
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Application", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Application");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.paddingBottom = 24;
                this.horizontalAlign = "center";
                this.paddingRight = 24;
                this.paddingTop = 24;
                this.paddingLeft = 24;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Button
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.horizontalGap = 2;
                this.textAlign = "center";
                this.paddingRight = 6;
                this.skin = mx.skins.spark.ButtonSkin;
                this.labelVerticalOffset = 1;
                this.verticalGap = 2;
                this.paddingLeft = 6;
                this.emphasizedSkin = mx.skins.spark.DefaultButtonSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ButtonBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ButtonBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ButtonBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.verticalAlign = "middle";
                this.horizontalGap = -1;
                this.firstButtonStyleName = "buttonBarFirstButtonStyle";
                this.textAlign = "center";
                this.horizontalAlign = "center";
                this.lastButtonStyleName = "buttonBarLastButtonStyle";
                this.verticalGap = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.buttonBarClasses.ButtonBarButton.buttonBarFirstButtonStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "buttonBarFirstButtonStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton.buttonBarFirstButtonStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.focusRoundedCorners = "tl bl";
                this.skin = mx.skins.spark.ButtonBarFirstButtonSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // mx.controls.buttonBarClasses.ButtonBarButton.buttonBarLastButtonStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "buttonBarLastButtonStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton.buttonBarLastButtonStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.focusRoundedCorners = "tr br";
                this.skin = mx.skins.spark.ButtonBarLastButtonSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // mx.controls.buttonBarClasses.ButtonBarButton
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.buttonBarClasses.ButtonBarButton", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.buttonBarClasses.ButtonBarButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.downSkin = null;
                this.upSkin = null;
                this.horizontalGap = 1;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.selectedUpSkin = null;
                this.skin = mx.skins.spark.ButtonBarMiddleButtonSkin;
                this.disabledSkin = null;
                this.selectedOverSkin = null;
                this.selectedDisabledSkin = null;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.CheckBox
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.CheckBox", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.CheckBox");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = null;
                this.paddingRight = 0;
                this.upIcon = null;
                this.icon = mx.skins.spark.CheckBoxSkin;
                this.skin = null;
                this.paddingBottom = -1;
                this.paddingTop = -1;
                this.labelVerticalOffset = 1;
                this.fontWeight = "normal";
                this.textAlign = "start";
                this.selectedUpIcon = null;
                this.overIcon = null;
                this.selectedOverIcon = null;
                this.disabledSkin = null;
                this.selectedDisabledIcon = null;
                this.selectedOverSkin = null;
                this.selectedDisabledSkin = null;
                this.downSkin = null;
                this.downIcon = null;
                this.horizontalGap = 3;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.selectedUpSkin = null;
                this.disabledIcon = null;
                this.paddingLeft = 0;
                this.selectedDownIcon = null;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ComboBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ComboBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ComboBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderSkin = mx.skins.spark.BorderSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ComboBox
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ComboBox", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ComboBox");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingBottom = -2;
                this.editableSkin = mx.skins.spark.EditableComboBoxSkin;
                this.leading = 0;
                this.paddingRight = 5;
                this.skin = mx.skins.spark.ComboBoxSkin;
                this.paddingTop = -1;
                this.arrowButtonWidth = 18;
                this.dropdownStyleName = "comboDropdown";
                this.paddingLeft = 5;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.List.comboDropdown
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "comboDropdown");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.List", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.List.comboDropdown");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.leading = 0;
                this.paddingRight = 5;
                this.dropShadowVisible = true;
                this.paddingLeft = 5;
                this.fontWeight = "normal";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Container
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Container", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderSkin = mx.skins.spark.ContainerBorderSkin;
                this.borderStyle = "none";
                this.cornerRadius = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.ControlBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.ControlBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.verticalAlign = "middle";
                this.paddingBottom = 11;
                this.paddingRight = 11;
                this.disabledOverlayAlpha = 0;
                this.paddingTop = 11;
                this.borderStyle = "none";
                this.paddingLeft = 11;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.DataGrid
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.DataGrid", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.DataGrid");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.headerDragProxyStyleName = "headerDragProxyStyle";
                this.alternatingItemColors = [0xeff3fa, 0xffffff];
                this.sortArrowSkin = mx.skins.spark.DataGridSortArrow;
                this.verticalGridLineColor = 0x696969;
                this.columnDropIndicatorSkin = mx.skins.halo.DataGridColumnDropIndicator;
                this.headerSeparatorSkin = mx.skins.spark.DataGridHeaderSeparatorSkin;
                this.stretchCursor = _embed_css_Assets_swf__2119559421_cursorStretch_1675390426;
                this.columnResizeSkin = mx.skins.halo.DataGridColumnResizeSkin;
                this.headerBackgroundSkin = mx.skins.spark.DataGridHeaderBackgroundSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.dataGridClasses.DataGridItemRenderer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.dataGridClasses.DataGridItemRenderer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.dataGridClasses.DataGridItemRenderer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingLeft = 5;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.DividedBox
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.DividedBox", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.DividedBox");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.dividerAlpha = 0.75;
                this.dividerThickness = 3;
                this.horizontalGap = 10;
                this.dividerSkin = _embed_css_Assets_swf__2119559421_mx_skins_BoxDividerSkin_1327404205;
                this.dividerAffordance = 6;
                this.verticalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_VBoxDivider_871893710;
                this.verticalGap = 10;
                this.horizontalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_HBoxDivider_2122981104;
                this.dividerColor = 0x6f7777;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.Form
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.Form", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Form");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingBottom = 16;
                this.paddingRight = 16;
                this.paddingTop = 16;
                this.verticalGap = 6;
                this.paddingLeft = 16;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.FormHeading
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.FormHeading", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.FormHeading");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontSize = 12;
                this.fontWeight = "bold";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.FormItem
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.FormItem", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.FormItem");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.indicatorSkin = _embed_css_Assets_swf__2119559421_mx_containers_FormItem_Required_1967713164;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.FormItemLabel
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.FormItemLabel", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.FormItemLabel");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.textAlign = "right";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.HDividedBox
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.HDividedBox", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.HDividedBox");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.dividerAlpha = 0.75;
                this.dividerThickness = 3;
                this.horizontalGap = 10;
                this.dividerSkin = _embed_css_Assets_swf__2119559421_mx_skins_BoxDividerSkin_1327404205;
                this.dividerAffordance = 6;
                this.verticalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_VBoxDivider_871893710;
                this.verticalGap = 10;
                this.horizontalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_HBoxDivider_2122981104;
                this.dividerColor = 0x6f7777;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HRule
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.HRule", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HRule");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.strokeWidth = 2;
                this.strokeColor = 0xc4cccc;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HSlider
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.HSlider", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HSlider");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.dataTipPlacement = "top";
                this.tickLength = 4;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Image
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Image", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Image");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.layoutDirection = "ltr";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.listClasses.ListBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.listClasses.ListBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.listClasses.ListBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingBottom = 2;
                this.paddingRight = 0;
                this.dropIndicatorSkin = mx.skins.halo.ListDropIndicator;
                this.paddingTop = 2;
                this.borderStyle = "solid";
                this.paddingLeft = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.NavBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.NavBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.NavBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderSkin = mx.skins.spark.BorderSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.Panel
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.Panel", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.borderColor = 0;
                this.paddingRight = 0;
                this.borderAlpha = 0.5;
                this.resizeEndEffect = "Dissolve";
                this.statusStyleName = "windowStatus";
                this.borderSkin = mx.skins.spark.PanelBorderSkin;
                this.cornerRadius = 0;
                this.paddingBottom = 0;
                this.dropShadowVisible = true;
                this.titleBackgroundSkin = mx.core.UIComponent;
                this.paddingTop = 0;
                this.borderStyle = "default";
                this.paddingLeft = 0;
                this.titleStyleName = "windowStyles";
                this.resizeStartEffect = "Dissolve";
            };
        }

        effects = style.mx_internal::effects;
        if (!effects)
        {
            effects = style.mx_internal::effects = [];
        }


          effects.push("resizeEndEffect");
          effects.push("resizeStartEffect");
          effects.push("resizeEndEffect");
          effects.push("resizeStartEffect");
          effects.push("resizeEndEffect");
          effects.push("resizeStartEffect");

        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.RadioButton
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.RadioButton", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.RadioButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = null;
                this.paddingRight = 0;
                this.upIcon = null;
                this.icon = mx.skins.spark.RadioButtonSkin;
                this.skin = null;
                this.paddingBottom = -1;
                this.paddingTop = -1;
                this.labelVerticalOffset = 1;
                this.fontWeight = "normal";
                this.textAlign = "start";
                this.selectedUpIcon = null;
                this.overIcon = null;
                this.selectedOverIcon = null;
                this.disabledSkin = null;
                this.selectedDisabledIcon = null;
                this.selectedOverSkin = null;
                this.selectedDisabledSkin = null;
                this.downSkin = null;
                this.downIcon = null;
                this.horizontalGap = 3;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.selectedUpSkin = null;
                this.disabledIcon = null;
                this.paddingLeft = 0;
                this.selectedDownIcon = null;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.TextArea.richTextEditorTextAreaStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "richTextEditorTextAreaStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.TextArea", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextArea.richTextEditorTextAreaStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // mx.controls.TextArea
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.TextArea", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextArea");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.horizontalScrollBarStyleName = "textAreaHScrollBarStyle";
                this.verticalScrollBarStyleName = "textAreaVScrollBarStyle";
                this.borderStyle = "solid";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.scrollClasses.ScrollBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.thumbSkin = mx.skins.spark.ScrollBarThumbSkin;
                this.paddingBottom = 0;
                this.thumbOffset = 0;
                this.paddingRight = 0;
                this.trackSkin = mx.skins.spark.ScrollBarTrackSkin;
                this.downArrowSkin = mx.skins.spark.ScrollBarDownButtonSkin;
                this.upArrowSkin = mx.skins.spark.ScrollBarUpButtonSkin;
                this.paddingTop = 0;
                this.paddingLeft = 0;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.ScrollControlBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.ScrollControlBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.ScrollControlBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.focusRoundedCorners = " ";
                this.borderSkin = mx.skins.spark.BorderSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.sliderClasses.Slider
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.sliderClasses.Slider", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.sliderClasses.Slider");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.thumbSkin = mx.skins.spark.SliderThumbSkin;
                this.labelOffset = -10;
                this.showTrackHighlight = false;
                this.tickOffset = -6;
                this.tickThickness = 1;
                this.thumbOffset = 0;
                this.trackHighlightSkin = mx.skins.spark.SliderTrackHighlightSkin;
                this.tickColor = 0x6f7777;
                this.trackSkin = mx.skins.spark.SliderTrackSkin;
                this.dataTipPrecision = 2;
                this.slideDuration = 300;
                this.dataTipOffset = 16;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.tabBarClasses.Tab
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.tabBarClasses.Tab", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.tabBarClasses.Tab");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.downSkin = null;
                this.upSkin = null;
                this.paddingBottom = 1;
                this.selectedDownSkin = null;
                this.overSkin = null;
                this.selectedUpSkin = null;
                this.skin = mx.skins.spark.TabSkin;
                this.disabledSkin = null;
                this.selectedOverSkin = null;
                this.paddingTop = 1;
                this.selectedDisabledSkin = null;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.TabBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.TabBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TabBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.verticalAlign = "top";
                this.horizontalGap = -1;
                this.textAlign = "center";
                this.horizontalAlign = "left";
                this.verticalGap = -1;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.TabNavigator
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.TabNavigator", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.TabNavigator");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.borderColor = 0x696969;
                this.horizontalGap = -1;
                this.horizontalAlign = "left";
                this.paddingTop = 10;
                this.tabOffset = 0;
                this.borderStyle = "solid";
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HScrollBar.textAreaVScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaVScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.HScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.VScrollBar.textAreaHScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaHScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.VScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.TextInput
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.TextInput", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TextInput");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingRight = 2;
                this.paddingTop = 2;
                this.borderSkin = mx.skins.spark.TextInputBorderSkin;
                this.paddingLeft = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.TileList
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.TileList", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.TileList");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.verticalAlign = "middle";
                this.textAlign = "center";
                this.paddingRight = 2;
                this.paddingLeft = 2;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.TitleWindow
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.TitleWindow", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.TitleWindow");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.closeButtonDisabledSkin = _embed_css_Assets_swf__2119559421_CloseButtonDisabled_1127838419;
                this.paddingBottom = 4;
                this.paddingRight = 4;
                this.closeButtonUpSkin = _embed_css_Assets_swf__2119559421_CloseButtonUp_228948428;
                this.dropShadowVisible = true;
                this.closeButtonOverSkin = _embed_css_Assets_swf__2119559421_CloseButtonOver_1301833045;
                this.paddingTop = 4;
                this.paddingLeft = 4;
                this.closeButtonDownSkin = _embed_css_Assets_swf__2119559421_CloseButtonDown_1466003011;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.VDividedBox
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.VDividedBox", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.VDividedBox");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.dividerAlpha = 0.75;
                this.dividerThickness = 3;
                this.horizontalGap = 10;
                this.dividerSkin = _embed_css_Assets_swf__2119559421_mx_skins_BoxDividerSkin_1327404205;
                this.dividerAffordance = 6;
                this.verticalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_VBoxDivider_871893710;
                this.verticalGap = 10;
                this.horizontalDividerCursor = _embed_css_Assets_swf__2119559421_mx_skins_cursor_HBoxDivider_2122981104;
                this.dividerColor = 0x6f7777;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.supportClasses.SkinnableComponent
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.errorSkin = spark.skins.spark.ErrorSkin;
                this.focusSkin = spark.skins.spark.FocusSkin;
            };
        }



        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }


    }
}

}
