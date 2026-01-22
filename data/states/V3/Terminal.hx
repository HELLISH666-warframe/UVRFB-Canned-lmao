
import funkin.editors.ui.UIText;
import funkin.menus.ModSwitchMenu;
import funkin.editors.ui.UITextBox;
import funkin.editors.ui.UIState;
//import flixel.text.FlxTextFormat;
import flixel.addons.display.FlxBackdrop;
import hxvlc.flixel.FlxVideoSprite;
import funkin.backend.utils.ShaderResizeFix;
var rainbowscreen:FlxBackdrop;

var heads, shit, video;
var tb:UITextBox;
var canSelect = true;
var marvin = false;

var list = [
    'triad' => ['song', 'triad','hard'],
    'undertale' => ['song', 'haemorrhage','hard'],
    'not-bloodshed' => ['song', 'not-bloodshed','hard'],
    'raw' => ['song', 'raw','hard'],
    'power-gain' => ['song', 'trojan-virus-old','hard'],
    'weed' => ['song', 'weed','hard']
];

var camPause = new FlxCamera();

var time:Float = 0;

var cameraText = new FlxCamera();

function create() {
    cameraText.bgColor = 0;
    camPause.bgColor = 0x00000000;
	FlxG.cameras.add(camPause, false);
    camPause.width=960;
    camPause.addShader(fish = new CustomShader("fisheye"));
	fish.MAX_POWER = 0.2;
    FlxCamera.defaultCameras = [camPause];

    FlxG.cameras.add(cameraText);
}

function postCreate() {
    FlxG.resizeWindow(960, 720);
    FlxG.resizeGame(960, 720);
    FlxG.scaleMode.width = 960;
    FlxG.scaleMode.height = 720;
    FlxG.mouse.visible = true;

    rainbowscreen = new FlxBackdrop(Paths.image('menus/desktop/rainbowpcBg'), FlxAxes.XY, 0, 0);
	var rainbTmr = new FlxTimer().start(0.005, function(tmr:FlxTimer)
	{
		rainbowscreen.x += (Math.sin(time)/5)+2;
		rainbowscreen.y += (Math.cos(time)/5)+1;
        setBackgroundRotation((Math.cos(time)*8)+9);
		tmr.reset(0.005);
	});
	add(rainbowscreen).camera=camPause;
    
    tb = new UITextBox(55, 640, '', 280, 20, false);
    tb.multiline = false;
	tb.label.setFormat(Paths.font('w95.otf'), 20, FlxColor.BLACK);

	tb.caretSpr.color = FlxColor.BLACK;
	tb.caretSpr.scale.set(1, 30);
	tb.caretSpr.offset.set(0, -14);
    add(tb).camera=cameraText;

    add(shit = new FlxSprite(140, -120)).scale.set(0.55, 0.45);
    add(video = new FlxVideoSprite()).alpha = shit.alpha = 0;

    if(window.width!=960)
    pressedEnter();

    tab = new FlxSprite(0, 560);
	tab.frames = Paths.getSparrowAtlas("windowsUi/run tab");
	tab.animation.addByPrefix("d", "tab");
	tab.animation.play("d");
	add(tab).camera=cameraText;
}

function update() {

    if (FlxG.keys.justPressed.ESCAPE) {
        
        FlxG.switchState(new ModState('DesktopState'));
    }

    if (controls.SEVEN) tb.label.text == '';

    if (controls.ACCEPT && canSelect) {
        var t = list[tb.label.text];

        if (t != null) {
            switch(t[0]) {
                case 'song':
                    FlxG.resizeWindow(1280, 720);
    FlxG.resizeGame(1280, 720);
    FlxG.scaleMode.width = 1280;
    FlxG.scaleMode.height = 720;
                    PlayState.loadSong(t[1], t[2]);
                    FlxG.switchState(new PlayState());
            }
        }
    }
}
public function setBackgroundRotation(rotation:Float) {
	rainbowscreen.rotation = rotation;
	rainbowscreen.velocity.set(85, 0).degrees = rainbowscreen.rotation;
}