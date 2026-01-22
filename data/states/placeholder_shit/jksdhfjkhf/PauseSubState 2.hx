import Sys;
import funkin.options.Options;
import funkin.options.OptionsMenu;
import funkin.editors.charter.Charter;
import flixel.text.FlxTextBorderStyle;
import funkin.options.keybinds.KeybindsOptions;
import funkin.backend.utils.FunkinParentDisabler;

var optionArray = ["resume song", "restart song", "shut down", "log off"];
var curSelected = 0;
var optionButtons = [];
var pauseMusic:FlxSound = FlxG.sound.load(Paths.music('breakfast'), 0, true);
var startMenu:FlxSprite = new FlxSprite(0, 720).loadGraphic(Paths.image("windowsUi/start menu"));
var bit:CustomShader = new CustomShader("8bitcolor");
var camPause:FlxCamera = new FlxCamera();
var tip:FlxText = new FlxText(1, 0, 0, "Press c to change binds or p for Options.", 48);
function postCreate(){
	tip.setFormat(Paths.font("w95.otf"), 32, FlxColor.WHITE, "center", FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	add(tip);
	tip.alpha=0;
    var parentDisabler = new FunkinParentDisabler();
	add(parentDisabler);

	camPause.bgColor = 0x00000000;
	FlxG.cameras.add(camPause, false);
	FlxTween.cancelTweensOf(camPause);
	FlxTween.tween(tip, {alpha: 1,x:370,y:100}, 0.9, {ease: FlxEase.quintIn});
    
	pauseMusic.group = FlxG.sound.defaultMusicGroup;
	pauseMusic.play(false, FlxG.random.int(0, Std.int(pauseMusic.length / 2)));

	startMenu.y -= startMenu.height;
	add(startMenu);
	for (i in 0...optionArray.length) {
			var button = new FlxSprite(25, (723 - startMenu.height) + (34 * i) + (i > 1 ? 270 : 0));
			button.frames = Paths.getSparrowAtlas("windowsUi/win98buttons");
			button.animation.addByPrefix("unselect", optionArray[i] + " unselect");
            button.animation.addByPrefix('unselect', optionArray[i] + ' unselect');
			button.animation.addByPrefix("select", optionArray[i] + " select");
			button.ID = i;
			add(button);
			button.animation.play("unselect");
			optionButtons.push(button);
		}
		cameras = [FlxG.cameras.list[FlxG.cameras.list.length - 1]];
	if (FlxG.save.data.colour){FlxG.camera.addShader(bit);
		PlayState.instance.camHUD.addShader(bit);
		bit.enablethisbitch = 1.;}
	}
function update(elapsed:Float) {
	if (pauseMusic.volume < .5)
		pauseMusic.volume += elapsed * .01;
	if (FlxG.keys.justPressed.P)
		FlxG.switchState(new OptionsMenu());
	if (FlxG.keys.justPressed.C)
		openSubState(new KeybindsOptions());
	for (i in optionButtons) {
		if (i.ID == curSelected) {i.animation.play("select");
        if (controls.ACCEPT) {
            var choice = optionArray[i.ID];
            switch (choice){
					case "resume song": close();
					case "restart song": 	
						FlxG.resetState();
					case "log off":
						PlayState.deathCounter = 0;
						PlayState.seenCutscene = false;
						if (PlayState.chartingMode && Charter.undos.unsaved)
                            PlayState.instance.saveWarn(false);
						else if(PlayState.isStoryMode) {
							FlxG.switchState(new ModState("DesktopState"));
						}else{
                            FlxG.switchState(PlayState.isStoryMode ? new StoryMenuState() : new FreeplayState());
						}
					case "shut down":Sys.exit(0);
				}
			}
		}
		else i.animation.play("unselect");
	}
    if (controls.DOWN_P){curSelected += 1; FlxG.sound.play(Paths.sound('scrollFunny'), 0.6);}
    if (controls.UP_P) {curSelected -= 1; FlxG.sound.play(Paths.sound('scrollFunny'), 0.6);}
    curSelected = (curSelected > optionArray.length - 1 ? 0 : (curSelected < 0 ? optionArray.length - 1 : curSelected));
	if (FlxG.keys.justPressed.O)FlxG.camera.removeShader(bit);
}
function destroy(){
	PlayState.instance.camHUD.removeShader(bit);
    FlxG.camera.removeShader(bit);
    FlxG.sound.destroySound(pauseMusic);
	FlxG.cameras.remove(camPause);
	for (i in 0...optionArray.length)
		remove(i);
	remove(startMenu);
}