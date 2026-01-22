import funkin.editors.ui.UIState;
import funkin.backend.utils.WindowUtils;
import funkin.backend.system.Main;
import funkin.menus.MainMenuState;
import funkin.menus.TitleState;
import lime.app.Application;
import funkin.backend.scripting.ModState;
import flixel.graphics.FlxGraphic;
import lime.graphics.Image;
import funkin.menus.credits.CreditsMain;
import funkin.menus.GitarooPause;
import funkin.menus.WarningState;
import openfl.text.TextFormat;
import funkin.backend.system.framerate.Framerate;
import Type;
import lime.ui.Window;
import openfl.system.Capabilities;

static var winX:Int = FlxG.stage.application.window.display.bounds.width / 6;
static var winY:Int = FlxG.stage.application.window.display.bounds.height / 6;

// MONITOR RESOLUTION
static var fsX:Int = Capabilities.screenResolutionX;
static var fsY:Int = Capabilities.screenResolutionY;

// WINDOW SIZE CHANGE VAR
static var resizex:Int = Capabilities.screenResolutionX / 1.5;
static var resizey:Int = Capabilities.screenResolutionY / 1.5;

function new() {   
    if (FlxG.save.data.glitch == null) FlxG.save.data.glitch = true;
    if (FlxG.save.data.chrom == null) FlxG.save.data.chrom = true;
    if (FlxG.save.data.chromeOffset == null) FlxG.save.data.chromeOffset = 0.5;
    if (FlxG.save.data.mosaic == null) FlxG.save.data.mosaic = true;
    if (FlxG.save.data.crt == null) FlxG.save.data.crt = true;
    if (FlxG.save.data.colour == null) FlxG.save.data.colour = true;
    if (FlxG.save.data.fish == null) FlxG.save.data.fish = true;
    if (FlxG.save.data.vhs == null) FlxG.save.data.vhs = true;
    if (FlxG.save.data.rain == null) FlxG.save.data.rain = true;
    if (FlxG.save.data.annoyingshit == null) FlxG.save.data.annoyingshit = true;
    
    if (FlxG.save.data.legacy == null) FlxG.save.data.legacy = false;
    if (FlxG.save.data.warning == null) FlxG.save.data.warning = true;
    if (FlxG.save.data.flashing == null) FlxG.save.data.flashing = true;
    if (FlxG.save.data.dev == null) FlxG.save.data.dev = false;
    if (FlxG.save.data.friendly == null) FlxG.save.data.friendly = false;
    if (FlxG.save.data.hitWindow == null) FlxG.save.data.hitWindow = 250;

    if (FlxG.save.data.uvrfbSONGS == null) FlxG.save.data.uvrfbSONGS = [];
    if(FlxG.save.data.version==null)FlxG.save.data.version="Extra";
    trace(FlxG.save.data.version);
}
public static var chromeOffset = (FlxG.save.data.chromeOffset/350);
public static var window_y:Int=window.y;
public static var window_x:Int=window.x;
var freindly = FlxGraphic.fromAssetKey(Paths.image("Counter-Strike Global Offensive"));
freindly.persist = true;
freindly.unique = true;
import funkin.backend.system.Flags;
Flags.DISABLE_WARNING_SCREEN=!FlxG.save.data.warning;
function update() {
    //Main.framerateSprite.codenameBuildField.text = "UNTITLED FAN-BUILD Vnull:\nnull.";
    if (FlxG.keys.justPressed.F6) {
    FlxG.bitmap.clearCache();
    FlxG.bitmap._cache.clear();
    Paths.tempFramesCache.clear();
    FlxG.resetState();
    }
    if (FlxG.save.data.friendly){
    var freindlingPhase = [];
    for (i in FlxG.state.members) {
        if (i != null && i.members != null) for (j in i.members) freindlingPhase.push(j);
        if (i != null && i.frames != null) freindlingPhase.push(i);
    }
    for (i in freindlingPhase) {
        if (i.frames == null) continue;
        var graphicSize = FlxPoint.get(i.width, i.height);
        if (i.animation != null) i.animation.stop();
        i.frames = freindly.imageFrame;
        i.setGraphicSize(graphicSize.x, graphicSize.y);
        i.updateHitbox();
    }
}
}

window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('icon'))));
if (FlxG.save.data.legacy){
var redirectStates:Map<FlxState, String> = [
        MainMenuState => "2.5/MainMenuState",
        TitleState => "2.5/TitleState_2.5"
];
}
function preStateSwitch() {
    Options.hitWindow=FlxG.save.data.hitWindow;
    switch(FlxG.save.data.version){
    case "2.5":
    redirectStates = [
        MainMenuState => "V2.5/MainMenuState",
        TitleState => "V2.5/TitleState",
        CreditsMain => "V2.5/CreditsState", 
        GitarooPause => "V3/MasterFreeplayState",
    ];
    case "3":
        redirectStates = [
        MainMenuState => "V3/DesktopState",
        TitleState => "Extra/TitleState",
        CreditsMain => "V3/CreditsRon", 
        GitarooPause => "V3/MasterFreeplayState",
        WarningState=>"V3/WarningState"
    ];
    case "4":
        redirectStates = [
        MainMenuState => "Extra/TitleState",
        TitleState => "Extra/TitleState",
        CreditsMain => "V3/CreditsRon", 
        GitarooPause => "V3/MasterFreeplayState",
        WarningState=>"V3/WarningState"
    ];
    default:
        redirectStates = [
        MainMenuState => "V3/DesktopState",
        TitleState => "V3/TitleState",
        CreditsMain => "V3/CreditsRon", 
        GitarooPause => "V3/MasterFreeplayState",
        WarningState=>"V3/WarningState"
    ];
    }
    for (redirectState in redirectStates.keys()) 
        if (Std.isOfType(FlxG.game._requestedState, redirectState)) 
            FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}