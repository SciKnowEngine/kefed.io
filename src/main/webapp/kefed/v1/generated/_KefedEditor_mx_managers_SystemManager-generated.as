package
{

import flash.display.LoaderInfo;
import flash.text.Font;
import flash.text.TextFormat;
import flash.text.engine.TextBlock;
import flash.text.engine.TextLine;
import flash.system.ApplicationDomain;
import flash.system.Security
import flash.utils.Dictionary;
import flash.utils.getDefinitionByName;
import flashx.textLayout.compose.ISWFContext;
import mx.core.IFlexModule;
import mx.core.IFlexModuleFactory;
import mx.core.EmbeddedFontRegistry;
import mx.core.Singleton;
import mx.core.RSLData;
import mx.events.RSLEvent;
import mx.core.FlexVersion;
import mx.managers.SystemManager;
import mx.preloaders.SparkDownloadProgressBar;

public class _KefedEditor_mx_managers_SystemManager
    extends mx.managers.SystemManager
    implements IFlexModuleFactory, ISWFContext
{
    // Cause the CrossDomainRSLItem class to be linked into this application.
    import mx.core.CrossDomainRSLItem; CrossDomainRSLItem;

    public function _KefedEditor_mx_managers_SystemManager()
    {

        super();
    }

    override     public function callInContext(fn:Function, thisArg:Object, argArray:Array, returns:Boolean=true):*
    {
        if (returns)
           return fn.apply(thisArg, argArray);
        else
           fn.apply(thisArg, argArray);
    }

    override     public function create(... params):Object
    {
        if (params.length > 0 && !(params[0] is String))
            return super.create.apply(this, params);

        var mainClassName:String = params.length == 0 ? "KefedEditor" : String(params[0]);
        var mainClass:Class = Class(getDefinitionByName(mainClassName));
        if (!mainClass)
            return null;

        var instance:Object = new mainClass();
        if (instance is IFlexModule)
            (IFlexModule(instance)).moduleFactory = this;
        if (params.length == 0) {
            Singleton.registerClass("mx.core::IEmbeddedFontRegistry",
                Class(getDefinitionByName("mx.core::EmbeddedFontRegistry")));
            EmbeddedFontRegistry.registerFonts(info()["fonts"], this);
}        return instance;
    }

    /**
     *  @private
     */
    private var _info:Object;

    override    public function info():Object
    {
        if (!_info)
        {
            _info = {
            cdRsls: [
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/framework_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"8165d3af89956f505bbf7b18667e0b2ccb9ec3674080ee701e65c69721aa2a4c",
"SHA-256",true,true,"default"),
new RSLData("framework_4.5.1.21328.swz",
"",
"8165d3af89956f505bbf7b18667e0b2ccb9ec3674080ee701e65c69721aa2a4c",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/tlf/2.0.0.232/textLayout_2.0.0.232.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"8f903698240fe799f61eeda8595181137b996156bb176da70ad6f41645c64c74",
"SHA-256",true,true,"default"),
new RSLData("textLayout_2.0.0.232.swz",
"",
"8f903698240fe799f61eeda8595181137b996156bb176da70ad6f41645c64c74",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/spark_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"a61663f0eb79848070c225295c549d272d01b2289a4615566d85041d5c8cd400",
"SHA-256",true,true,"default"),
new RSLData("spark_4.5.1.21328.swz",
"",
"a61663f0eb79848070c225295c549d272d01b2289a4615566d85041d5c8cd400",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/sparkskins_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"7899edf6a90c42aab967d1695cf634953c3cdc0a4c4fb442a97349c4d575b6c2",
"SHA-256",true,true,"default"),
new RSLData("sparkskins_4.5.1.21328.swz",
"",
"7899edf6a90c42aab967d1695cf634953c3cdc0a4c4fb442a97349c4d575b6c2",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/rpc_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"b2302138b70206daaf6737166713bec5280d4a90c9fcd8cc3e0923b8b836be9c",
"SHA-256",true,true,"default"),
new RSLData("rpc_4.5.1.21328.swz",
"",
"b2302138b70206daaf6737166713bec5280d4a90c9fcd8cc3e0923b8b836be9c",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/mx_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"5270c4cdf61ab3f586b06b3d5f3e87624a1d72235bd10b22535861d2bab4f544",
"SHA-256",true,true,"default"),
new RSLData("mx_4.5.1.21328.swz",
"",
"5270c4cdf61ab3f586b06b3d5f3e87624a1d72235bd10b22535861d2bab4f544",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/advancedgrids_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"752728875ea3af59068a7bc2ba6ee80792ffbbe401027fbb986a2f09469f65af",
"SHA-256",true,true,"default"),
new RSLData("advancedgrids_4.5.1.21328.swz",
"",
"752728875ea3af59068a7bc2ba6ee80792ffbbe401027fbb986a2f09469f65af",
"SHA-256",true,true,"default")]]
,
            compiledLocales: [ "en_US" ],
            compiledResourceBundleNames: [ "SharedResources", "collections", "components", "containers", "controls", "core", "datamanagement", "effects", "formatters", "layout", "logging", "messaging", "rpc", "skins", "states", "styles", "utils", "validators" ],
            currentDomain: ApplicationDomain.currentDomain,
            fonts:       {
"arial" : {regular:true, bold:false, italic:false, boldItalic:false}
,
"verdana" : {regular:true, bold:false, italic:false, boldItalic:false}
}
,
            initialize: "init();",
            mainClassName: "KefedEditor",
            mixins: [ "_KefedEditor_FlexInit", "_KefedEditor_Styles", "mx.messaging.config.LoaderConfig", "mx.managers.systemClasses.ActiveWindowManager" ],
            placeholderRsls: [
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/osmf_1.0.0.16316.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"b63185fca5d2bdbb568593f2bf232e87e5a20a7ea2ce2e26671d159838d598ed",
"SHA-256",true,true,"default"),
new RSLData("osmf_1.0.0.16316.swz",
"",
"b63185fca5d2bdbb568593f2bf232e87e5a20a7ea2ce2e26671d159838d598ed",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/charts_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"4bc492f44f0f3429e00a311ab4dbcfa4cbd7ad1a0cd44a0aacc84e72de7814ee",
"SHA-256",true,true,"default"),
new RSLData("charts_4.5.1.21328.swz",
"",
"4bc492f44f0f3429e00a311ab4dbcfa4cbd7ad1a0cd44a0aacc84e72de7814ee",
"SHA-256",true,true,"default")],
[new RSLData("http://fpdownload.adobe.com/pub/swz/flex/4.5.1.21328/spark_dmv_4.5.1.21328.swz",
"http://fpdownload.adobe.com/pub/swz/crossdomain.xml",
"1e46a6a7029e0075e0d92eb95fd2fe2fa2757a1983b307c051b2bf6af0a6ddad",
"SHA-256",true,true,"default"),
new RSLData("spark_dmv_4.5.1.21328.swz",
"",
"1e46a6a7029e0075e0d92eb95fd2fe2fa2757a1983b307c051b2bf6af0a6ddad",
"SHA-256",true,true,"default")],
]
,
            preinitialize: "DiagramMappings.initializeMappings();",
            preloader: mx.preloaders.SparkDownloadProgressBar,
            viewSourceURL: "srcview/index.html"
            }
        }
        return _info;
    }


    /**
     *  @private
     */
    private var _preloadedRSLs:Dictionary; // key: LoaderInfo, value: Vector.<RSLData>

    /**
     *  @private
     */
    private var _allowDomainParameters:Vector.<Array>;

    /**
     *  @private
     */
    private var _allowInsecureDomainParameters:Vector.<Array>;

    /**
     *  @private
     *  The RSLs loaded by this system manager before the application
     *  starts. RSLs loaded by the application are not included in this list.
     */
    override public function get preloadedRSLs():Dictionary
    {
        if (_preloadedRSLs == null)
           _preloadedRSLs = new Dictionary(true);
        return _preloadedRSLs;
    }

    /**
     *  @private
     *  Calls Security.allowDomain() for the SWF associated with this IFlexModuleFactory
     *  plus all the SWFs assocatiated with RSLs preLoaded by this IFlexModuleFactory.
     *
     */
    override public function allowDomain(... domains):void
    {
        Security.allowDomain.apply(null, domains);

        for (var loaderInfo:Object in _preloadedRSLs)
        {
            if (loaderInfo.content && ("allowDomainInRSL" in loaderInfo.content))
                loaderInfo.content["allowDomainInRSL"].apply(null, domains);
        }

        if (!_allowDomainParameters)
            _allowDomainParameters = new Vector.<Array>();
        _allowDomainParameters.push(domains);

        // Run our handler before the default handlers so the RSL is trusted before the
        // default handlers run.
        addEventListener(RSLEvent.RSL_ADD_PRELOADED, addPreloadedRSLHandler, false, 50);
    }

    /**
     *  @private
     *  Calls Security.allowInsecureDomain() for the SWF associated with this IFlexModuleFactory
     *  plus all the SWFs assocatiated with RSLs preLoaded by this IFlexModuleFactory.
     *
     */
    override public function allowInsecureDomain(... domains):void
    {
        Security.allowInsecureDomain.apply(null, domains);

        for (var loaderInfo:Object in _preloadedRSLs)
        {
            if (loaderInfo.content && ("allowInsecureDomainInRSL" in loaderInfo.content))
                loaderInfo.content["allowInsecureDomainInRSL"].apply(null, domains);
        }
        if (!_allowInsecureDomainParameters)
            _allowInsecureDomainParameters = new Vector.<Array>();
        _allowInsecureDomainParameters.push(domains);

        // Run our handler before the default handlers so the RSL is trusted before the
        // default handlers run.
        addEventListener(RSLEvent.RSL_ADD_PRELOADED, addPreloadedRSLHandler, false, 50);
    }

    /**
     *  @private
     */
    private function addPreloadedRSLHandler(event:RSLEvent):void
    {
        var loaderInfo:LoaderInfo = event.loaderInfo;
        if (!loaderInfo || !loaderInfo.content)
            return;
        var domains:Array
        if (allowDomainsInNewRSLs && _allowDomainParameters)
        {
            for each (domains in _allowDomainParameters)
            {
                if ("allowDomainInRSL" in loaderInfo.content)
                    loaderInfo.content["allowDomainInRSL"].apply(null, domains);
            }
        }

        if (allowInsecureDomainsInNewRSLs && _allowInsecureDomainParameters)
        {
            for each (domains in _allowInsecureDomainParameters)
            {
                if ("allowInsecureDomainInRSL" in loaderInfo.content)
                    loaderInfo.content["allowInsecureDomainInRSL"].apply(null, domains);
            }
        }
    }


}

}
