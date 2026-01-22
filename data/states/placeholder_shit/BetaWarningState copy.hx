import flixel.util.FlxColor;
import flixel.text.FlxText;
import flixel.text.FlxText.FlxTextFormatMarkerPair;
import flixel.text.FlxText.FlxTextFormat;
import funkin.backend.utils.DiscordUtil;
import funkin.backend.FunkinText;

var titleAlphabet:Alphabet;
var disclaimer:FunkinText;

var transitioning:Bool = false;

function create() {
	titleAlphabet = new Alphabet(0, 0, "WARNING", true);
	titleAlphabet.screenCenter(FlxAxes.X);
	add(titleAlphabet);

	disclaimer = new FunkinText(16, titleAlphabet.y + titleAlphabet.height + 10, FlxG.width - 32, "", 32);
	disclaimer.alignment = 'center';
	disclaimer.applyMarkup('This engine is still in a *'+Main.releaseCycle+'* state. That means *majority of the features* are either *buggy* or *non finished*. If you find any bugs, please report them to the Codename Engine GitHub.\n\nPress ENTER to continue',
		[
			new FlxTextFormatMarkerPair(new FlxTextFormat(0xFFFF4444), "*")
		]
	);
	add(disclaimer);

	var off = Std.int((FlxG.height - (disclaimer.y + disclaimer.height)) / 2);
	disclaimer.y += off;
	titleAlphabet.y += off;

	DiscordUtil.call("onMenuLoaded", ["Beta Warning"]);
}

function update(elapsed:Float) {
	if (FlxG.keys.justPressed.SEVEN) {
		persistentUpdate = false;
		persistentDraw = true;
		import funkin.editors.EditorPicker;
		openSubState(new EditorPicker());
	}
	if (controls.ACCEPT && transitioning) {
		FlxG.camera.stopFX(); FlxG.camera.visible = false;
		goToTitle();
	}

	if (controls.ACCEPT && !transitioning) {
		transitioning = true;
		CoolUtil.playMenuSFX(0);
		FlxG.camera.flash(FlxColor.WHITE, 1, function() {
			FlxG.camera.fade(FlxColor.BLACK, 2.5, false, goToTitle);
		});
	}
}

function goToTitle() {
	if (FlxG.save.data.legacy)
		FlxG.switchState(new ModState('2.5/TitleState_2.5'));
	else
	FlxG.switchState(new TitleState());
}