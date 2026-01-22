import funkin.backend.utils.DiscordUtil;
import flixel.input.keyboard.FlxKey;
import flixel.sound.FlxSound;
import openfl.Assets;

var chrom = new CustomShader("chromatic aberration");
var glitch = new CustomShader("glitchsmh");
var vhs = new CustomShader("vhs");
var crt = new CustomShader("fake CRT");
var time:Float = 0;
var mmtw = new FlxSound();
function create() {
	mmtw = FlxG.sound.load(Paths.music('breakfast'), 0, true);
	mmtw.play(false, FlxG.random.int(0, Std.int(mmtw.length / 2)));
	if (FlxG.save.data.glitch) {FlxG.camera.addShader(glitch);
		glitch.on = 1.;}
	if (FlxG.save.data.vhs)FlxG.camera.addShader(vhs);
	if (FlxG.save.data.crt)FlxG.camera.addShader(crt);
	if (FlxG.save.data.chrom) FlxG.camera.addShader(chrom);
			
	bg = CoolUtil.loadAnimatedGraphic(new FlxSprite(), Paths.image('menus/titlescreen/titleThing'));
	bg.scale.set(2.25,2.25);
	bg.updateHitbox();
	bg.screenCenter();
	bg.scrollFactor.set(0.1,0.1);
	//0.33_CAN'T_be_right_it_CAN'T.
	bg.alpha = 0.33;
	add(bg);

	screen = new FlxSprite().loadGraphic(Paths.image("warning/lol"));
	screen.angle = -3;
	add(screen);
			
	FlxTween.tween(screen, {y: screen.y + 20}, 1, {ease: FlxEase.circInOut, type: FlxTween.PINGPONG});
	FlxTween.tween(screen, {angle: 3}, 2, {ease: FlxEase.backInOut, type: FlxTween.PINGPONG});
}
	
function update(elapsed:Float) {time += elapsed;
    glitch.data.iTime.value = vhs.data.iTime.value = [time];
	chrom.rOffset = chromeOffset*Math.sin(time);
	chrom.bOffset = -chromeOffset*Math.sin(time);
	if (mmtw.volume < .5) mmtw.volume += elapsed * .01;
	if (FlxG.keys.justPressed.ENTER){
		mmtw.destroy();
		FlxG.sound.play(Paths.sound('resumeSong'));
		FlxTween.tween(FlxG.camera, {zoom: 0.5, angle: 45}, 0.8, {ease: FlxEase.quadIn});
		new FlxTimer().start(0.8, function(tmr:FlxTimer)FlxG.switchState(new TitleState()));
	}
}