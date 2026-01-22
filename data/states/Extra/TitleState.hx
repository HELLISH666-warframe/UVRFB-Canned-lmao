import flixel.addons.display.FlxBackdrop;
import flixel.text.FlxTextBorderStyle;
import funkin.options.OptionsMenu;

static var initialized:Bool = false;
static var submenu:Int = 0;
var time:Float = 0;
var yes:Bool = false;

var blackScreen,textGroup,ngSpr,curWacky,animbarScrt,animbarScrb;//Kill me.

var fish = new CustomShader("fisheye");
var chrom = new CustomShader("chromatic aberration");

//Ok_boomer.
var options = ["Story","Freeplay","Credits","Options","..."];//Also_add_colors_later.
var grpMenuShit = new FlxTypedGroup();
static var curSelected_submenu:Int = 0;
var coolDown:Bool = false;

function create() {
	submenu=0;
	FlxG.scaleMode.width = 960;
	FlxG.scaleMode.height = 720;
	window.resize(960,720);
	changeSelection(0);

	curWacky = FlxG.random.getObject(getIntroTextShit());

	FlxG.mouse.visible = false;

	if(!initialized) new FlxTimer().start(1, ()-> {startIntro();});
	else startIntro();//Reloading state wont cause errors.
	if(FlxG.save.data.chrom) FlxG.camera.addShader(chrom);
	FlxG.camera.addShader(fish);
	fish.MAX_POWER=0.2;
}

function startIntro() {
	if (!initialized) CoolUtil.playMenuSong(true);
		
	untitled = new FlxBackdrop(Paths.image('menus/Extras/Title/Untitled'), FlxAxes.Y, 0, 30);
	vs = new FlxBackdrop(Paths.image('menus/Extras/Title/vs'), FlxAxes.Y, 0, 30);
	ron = new FlxBackdrop(Paths.image('menus/Extras/Title/ron'), FlxAxes.Y, 0, 30);
	FAN_BUILD = new FlxBackdrop(Paths.image('menus/Extras/Title/FAN-BUILD'), FlxAxes.Y, 0, 30);

	untitled_right = new FlxBackdrop(Paths.image('menus/Extras/Title/Untitled'), FlxAxes.Y, 0, 30);
	vs_right = new FlxBackdrop(Paths.image('menus/Extras/Title/vs'), FlxAxes.Y, 0, 30);
	ron_right = new FlxBackdrop(Paths.image('menus/Extras/Title/ron'), FlxAxes.Y, 0, 30);
	FAN_BUILD_right = new FlxBackdrop(Paths.image('menus/Extras/Title/FAN-BUILD'), FlxAxes.Y, 0, 30);
	new FlxTimer().start(0.005, function(tmr:FlxTimer) {
		untitled.y += 2;
		vs.y += 2;
		ron.y += 2;
		FAN_BUILD.y += 2;

		untitled_right.y -= 2;
		vs_right.y -= 2;
		ron_right.y -= 2;
		FAN_BUILD_right.y -= 2;
		tmr.reset(0.005);
	});
	add(untitled).x=70;
	add(vs).x=140;
	add(ron).x=190;
	add(FAN_BUILD).x=240;

	add(untitled_right).x=700;
	add(vs_right).x=770;
	add(ron_right).x=800;
	add(FAN_BUILD_right).x=840;
	//FlxG.camera.zoom=0.3;

	for (i in 0...options.length) {
		var item = new FlxText(-80,220+ (i * 80), 540, options[i]);
		item.setFormat(Paths.font("w95.otf"), 29, FlxColor.WHITE,'right');
		item.scrollFactor.set();
		item.angle=-7;

		item.updateHitbox();
		item.ID = i;

		grpMenuShit.add(item);
	}

	add(grpMenuShit);
	add(titleText = new FlxSprite().loadGraphic(Paths.image('GhG82OkWMAAUU3Z'))).screenCenter(FlxAxes.XY); 
		
	blackScreen = CoolUtil.loadAnimatedGraphic(new FlxSprite(), Paths.image('menus/V3/titlescreen/titleThing'));
	blackScreen.scale.set(2.25,2.25);
	blackScreen.updateHitbox();
	blackScreen.screenCenter();
	blackScreen.scrollFactor.set(0.1,0.1);
	add(blackScreen);

	add(textGroup = new FlxGroup());

	ngSpr = new FlxSprite(0, FlxG.height * 0.52).loadGraphic(Paths.image('menus/V3/titlescreen/newgrounds_logo'));
	add(ngSpr);
	ngSpr.visible = false;
	ngSpr.updateHitbox();
	ngSpr.screenCenter(FlxAxes.X);
	ngSpr.antialiasing = Options.antialiasing;

	var blackeffect:FlxSprite = new FlxSprite().makeSolid(FlxG.width*3, FlxG.height*3, FlxColor.BLACK);
	blackeffect.updateHitbox();
	blackeffect.antialiasing = true;
	blackeffect.screenCenter(FlxAxes.XY);
	blackeffect.scrollFactor.set();
	add(blackeffect);

	FlxTween.tween(blackeffect, {alpha: 0}, 1, {ease: FlxEase.quadInOut});

	if (initialized) skipIntro();
	else initialized = true;
}

function getIntroTextShit():Array<Array<String>> {
	var fullText:String = Assets.getText(Paths.txt('titlescreen/introText'));

	var firstArray:Array<String> = fullText.split('\n');
	var swagGoodArray:Array<Array<String>> = [];

	for (i in firstArray) swagGoodArray.push(i.split('--'));

	return swagGoodArray;
}

var transitioning:Bool = false;

function update(elapsed:Float) {
	time += elapsed;
	chrom.rOffset = chromeOffset*Math.sin(time);
	chrom.bOffset = -chromeOffset*Math.sin(time);

	var pressedEnter:Bool = controls.ACCEPT;

	if (initialized && !transitioning && skippedIntro && pressedEnter&&submenu==0) {
		FlxG.sound.play(Paths.sound('confirmMenu'), 0.7);

		submenu=1;
		new FlxTimer().start(0.16, function(tmr:FlxTimer)
		coolDown = true);
		FlxTween.tween(titleText, {x: titleText.x + 250}, 0.5, {ease: FlxEase.quadIn});
		/*new FlxTimer().start(1, ()-> {
			FlxG.switchState(new ModState('Extra/DesktopState'));
		});*/
	}

	if (initialized && pressedEnter && !skippedIntro) skipIntro();
	if (FlxG.keys.justPressed.F) FlxG.fullscreen = !FlxG.fullscreen;
	if(controls.BACK)kys();

	if(submenu==1){
	if (controls.ACCEPT && coolDown) {
		yes=true;
		kys();
	}
	if (controls.UP_P||controls.DOWN_P) changeSelection(controls.DOWN_P ? 1 : -1);
	if (controls.SWITCHMOD) {
		import funkin.menus.ModSwitchMenu;
		openSubState(new ModSwitchMenu());
		persistentUpdate = false;
		persistentDraw = true;
	}
	if (FlxG.keys.justPressed.SEVEN) {
		persistentUpdate = false;
		persistentDraw = true;
		import funkin.editors.EditorPicker;
		openSubState(new EditorPicker());
	}
}
}

function createCoolText(textArray:Array<String>) {
	if(textArray==null){while (textGroup.members.length > 0) textGroup.remove(textGroup.members[0], true); return;}
	for (i in 0...textArray.length) {
		var money:FlxText = new FlxText(0, 0, 0, textArray[i]);
		money.setFormat(Paths.font("w95.otf"), 60, FlxColor.WHITE, 'center');
		money.bold = true;
		money.y += (i * 60) + 200;
		money.screenCenter(FlxAxes.X);
		textGroup.add(money);
	}
}
function beatHit() {
	switch (curBeat) {
		case 1: createCoolText(['A', 'FUCKTON', 'OF', 'PEOPLE']);
		case 3: createCoolText(['A', 'FUCKTON', 'OF', 'PEOPLE', 'PRESENT']);
		case 4: createCoolText(null);
		case 5: createCoolText(['in association with']);
		case 7: createCoolText(['in association with', 'not patrick']);
		ngSpr.visible = true;
		case 8: createCoolText(null);
		ngSpr.visible = false;
		case 9: createCoolText([curWacky[0]]);
		case 11: createCoolText([curWacky[0], curWacky[1]]);
		case 12: createCoolText(null);
		case 13: createCoolText(['LITERALLY EVERY']);
		case 14: createCoolText(['LITERALLY EVERY', 'FANMADE FNF MOD']);
		case 15: createCoolText(['LITERALLY EVERY', 'FANMADE FNF MOD', 'EVER']);
		case 16: skipIntro();
	}
}

var skippedIntro:Bool = false;
function skipIntro() {
	if (!skippedIntro) {
		remove(ngSpr);
		remove(textGroup);
		FlxG.camera.flash(FlxColor.WHITE, 4);
		blackScreen.alpha = 0;

		skippedIntro = true;
	}
	changeSelection(0);
}

//Submenu_shit.
function changeSelection(change:Int = 0) {
	curSelected_submenu += change;

	if (curSelected_submenu < 0) curSelected_submenu = options.length - 1;
	if (curSelected_submenu >= options.length) curSelected_submenu = 0;

	for (item in grpMenuShit.members) {
		item.color = 0xFFFFFFF;
		if (curSelected_submenu == item.ID) {
			item.color = 0xFFFFF777;
		}
	}
}

public function alive() {
	trace("Ok");
	submenu=1;
	FlxTween.tween(titleText, {y: 100}, 1, {ease: FlxEase.expoIn});
	FlxTween.tween(grpMenuShit.members[i], {y: grpMenuShit.members[i].x - 900}, 1, {ease: FlxEase.quadIn});
}
function kys() {
	if(yes==true){
	FlxTween.tween(titleText, {y: 1200}, 1, {ease: FlxEase.expoIn,onComplete: ()->{FlxG.camera.shake(0.0099, 1);
	FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX'), 10000);}});
	for(i in 0...grpMenuShit.length)
	FlxTween.tween(grpMenuShit.members[i], {y: grpMenuShit.members[i].x + 900}, 1, {ease: FlxEase.quadIn});
	new FlxTimer().start(1.1, ()-> {
	switch (options[curSelected_submenu]) {
			case "Story": //FlxG.switchState(new StoryMenuState());
			submenu=2;
			openSubState(new ModSubState("Extra/story-substate"));
			case "Freeplay": //FlxG.switchState(new ModState("Extra/freeplay-state-thingie"));
			FlxG.switchState(new ModState("Extra/MasterFreeplayState"));
			case "Credits": FlxG.switchState(new StoryMenuState());
			case "Options": FlxG.switchState(new OptionsMenu());
		}
		yes=false;
	});
}

}