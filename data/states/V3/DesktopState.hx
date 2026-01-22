//𝔽𝕣𝕒𝕜𝕚𝕥𝕤_made_this_i_just_added_the_shaders
var crt:CustomShader  = new CustomShader("fake CRT");
var bit:CustomShader  = new CustomShader("8bitcolor");
var chrom:CustomShader  = new CustomShader("chromatic aberration");
var rainbowscreen:FlxBackdrop;
import funkin.options.OptionsMenu;
import funkin.menus.ModSwitchMenu;
import funkin.menus.credits.CreditsMain;
import flixel.addons.display.FlxBackdrop;
import flixel.ui.FlxButton;
import funkin.menus.GitarooPause;
import funkin.editors.ui.UIState;
var icons:Map<String, Dynamic> = [
	"discord" => "https://discord.gg/ron-874366610918473748",
	"random" => "https://www.facebook.com",
	"settings" => new OptionsMenu(),
	"freeplay" => new GitarooPause(),
	"story mode" => "story mode is idiot",
	"credits" => new CreditsMain(),
];
var camText:FlxCamera;
public var leftState:Bool = false;
public var curClicked:String = "";
var clickAmounts:Int = 0;
var buttons:Array<FlxButton> = [];
var clicked:Bool = false;
var time:Float = 0;
var transitioningToIdiotism:Bool = false;
var window:FlxSprite;
var ywindow:Float = FlxG.height/2-203;
var tweening:Bool = false;
function create() {
	if (FlxG.save.data.rtx == null) FlxG.save.data.rtx = false;
	CoolUtil.playMenuSong();
	var iconI:Int = 0;
	var iconFrames = Paths.getFrames("menus/V3/desktop/menuIcons");
	var sanstitre = new FlxBackdrop(Paths.image('menus/V3/desktop/sanstitre'), FlxAxes.XY, 0, 0);
	rainbowscreen = new FlxBackdrop(Paths.image('menus/V3/desktop/rainbowpcBg'), FlxAxes.XY, 0, 0);
	var rainbTmr = new FlxTimer().start(0.005, function(tmr:FlxTimer)
	{
		rainbowscreen.x += (Math.sin(time)/5)+2;
		rainbowscreen.y += (Math.cos(time)/5)+1;
		sanstitre.setPosition(rainbowscreen.x,rainbowscreen.y);
		tmr.reset(0.005);
	});
	add(sanstitre);
	add(rainbowscreen);
	add(new FlxSprite().loadGraphic(Paths.image("menus/V3/desktop/pcBg")));
			if (FlxG.save.data.crt){FlxG.camera.addShader(crt);}
			if (FlxG.save.data.colour) {FlxG.camera.addShader(bit);
			bit.data.enablethisbitch.value = [1.];}
			if (FlxG.save.data.chrom) {FlxG.camera.addShader(chrom);
				chrom.data.rOffset.value = [1/2];
				chrom.data.gOffset.value = [0.0];
				chrom.data.bOffset.value = [1 * -1];
			}
	
	window = new FlxSprite(FlxG.width/1.3-405,ywindow);
	window.frames = Paths.getSparrowAtlas('menus/V3/desktop/menuCarNew');
	window.animation.addByPrefix('window', 'window', 24, true);
	window.animation.play('window');
	window.angle = 3;
	FlxTween.tween(window, {y: ywindow + 10, angle: -3}, 1, {ease: FlxEase.circInOut, type: 4});
	window.scale.set(1.5,1.5);
	add(window);

	for (i in icons.keys()) {
		var button:FlxButton;
		button = new FlxButton((iconI > 2 ? 180 : 20), 20 + (150 * (iconI > 2 ? iconI - 3:iconI)), "", function() {
			if (curClicked != i) {
				clickAmounts = 0;
				curClicked = i;
				for (i in buttons)
					i.color = 0xffffff;
			}
			if (curClicked == i) {
				clickAmounts++;
				button.color = 0xFF485EC2;
				if (clickAmounts == 2) {
					if (icons[i] == "story mode is idiot") {
//						PlayState.loadSong("ron", "hard");
						FlxG.switchState(new PlayState());
						PlayState.loadWeek({
							name: "main",
							id: "main", // idk what this is i would use the week name lol
							sprite: null,
							chars: [null, null, null],
							songs: [{name: 'ron', hide: false}, {name: 'wasted', hide: false}, {name: 'ayo', hide: false}, {name: 'bloodshed', hide: false}, {name: 'trojan-virus', hide: false},],
							difficulties: ['hard']
							}, "hard");
/*						PlayState.loadWeek("ron", "hard");
						PlayState.isStoryMode = true;
						FlxG.switchState.isStoryMode = true;
						PlayState.storyWeek = {
							name: "ron"
						}
*/						/*StoryMenuState.musicTime = FlxG.sound.music.time;
						new StoryMenuState();
						transitioningToIdiotism = true;
						rainbTmr.cancel();
						new FlxTimer().start(1.5, function(tmr:FlxTimer){
							FlxG.camera.fade(0x88FFFFFF, 0.6, false);
							new FlxTimer().start(2, function(tmr:FlxTimer){ FlxG.switchState(new StoryMenuState()); FlxG.camera.fade(0x88FFFFFF, 0, true);});
						});
						var video:misc.MP4Handler = new misc.MP4Handler();
						openSubState(new misc.CustomFadeTransition(.8, false));
												video.playMP4(Paths.videoRon('ron'), new PlayState(), false, false, false);
						*/new FlxTimer().start(.5, function(tmr:FlxTimer)
						{
							trace("hi");
						});
					}
					else if (icons[i].length != 0)
						CoolUtil.openURL(icons[i]);
					else
						FlxG.switchState(icons[i]);
				}
					
			}
			clicked = true;
		});
		button.frames = iconFrames;
		button.animation.addByPrefix("normal", i);
		button.animation.addByPrefix("highlight", i);
		button.animation.addByPrefix("pressed", i);
		button.allowSwiping = false;
		add(button);
		buttons.push(button);
		iconI++;
	}
}
function update(elapsed:Float) {
	if (FlxG.sound.music.volume < 0.8)
		FlxG.sound.music.volume += 0.5 * elapsed;
	if (FlxG.keys.justPressed.SEVEN) {
		persistentUpdate = false;
		persistentDraw = true;
		import funkin.editors.EditorPicker;
		openSubState(new EditorPicker());
	}

	if (controls.SWITCHMOD) {
		openSubState(new ModSwitchMenu());
		persistentUpdate = false;
		persistentDraw = true;
	}

	FlxG.mouse.visible = true;
	if (FlxG.keys.pressed.CONTROL && FlxG.keys.justPressed.R) FlxG.switchState(new UIState(true, "DIE_FUCKER"));
	{time += elapsed;
		chrom.data.rOffset.value = [0.005*Math.sin(time)];
		chrom.data.bOffset.value = [-0.005*Math.sin(time)];
	}
}