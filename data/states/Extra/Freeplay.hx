import funkin.backend.chart.Chart;
import flixel.tweens.FlxTween.FlxTweenType;
import flixel.graphics.frames.FlxAtlasFrames;
import funkin.savedata.FunkinSave;
import flixel.text.FlxTextBorderStyle;
import sys.io.File;
import Sys;

var otherUi = true;
var sidcamera = new FlxCamera();
var othershitfuckyou = new FlxCamera();
var sometexts = new FlxCamera();
othershitfuckyou.visible = false;

var sidsongs = [];
var sidsongstext = [];
var sidsongsdiff = [];
var sidcamerasongs = new FlxCamera(50, 150, 500, 520);
var sidlimit = 0;

var curSelected:Int;
var curSubSelected:Int;
var completePathNewOne = Sys.getCwd() + Paths.getAssetsRoot().substr(2, Paths.getAssetsRoot().length) + "/";
var SELECTLEVEL:FlxText;
var chosed = false;

function new() {
	FlxG.state.persistentUpdate;
	FlxG.cameras.add(sidcamera, false);
	sidcamera.bgColor = 0x77000000;
	FlxG.cameras.add(sidcamerasongs, false);
	sidcamerasongs.bgColor = 0;
	FlxG.cameras.add(othershitfuckyou, false);
	othershitfuckyou.bgColor = 0;
	FlxG.cameras.add(sometexts, false);
	sometexts.bgColor = 0;

	SELECTLEVEL = new FlxText(0, 20, 0, "SELECT LEVEL...", 70);
	SELECTLEVEL.screenCenter(FlxAxes.X);
	SELECTLEVEL.font = Paths.font("Good.ttf");
	SELECTLEVEL.camera = sometexts;
	add(SELECTLEVEL);

	var line = new FlxSprite().loadGraphic(Paths.image("menu/batch0/freeplay/line"));
	line.camera = sidcamera;
	line.antialiasing = true;
	line.scale.set(1.2, 0.87);
	line.screenCenter();
	line.x -= 60;
	line.y += 40;
	add(line);

	var songsFound = CoolUtil.coolTextFile(Paths.txt('config/freeplaySonglist'));
	for(s in songsFound)
		sidsongs.push(Chart.loadChartMeta(s, "normal", true));

	for (it=>i in sidsongs) {
		var text = new FlxText(0, 60 * it, sidcamerasongs.width, i.displayName, 40);
		text.font = Paths.font("Good.ttf");
		text.camera = sidcamerasongs;
		add(text);
		sidsongstext.push(text);
	}

	buddyCovers = new FlxSprite(610, 160);
	buddyCovers.camera = sidcamera;
	add(buddyCovers);

	buddyNoice = new FlxSprite(610, 160);
	buddyNoice.frames = FlxAtlasFrames.fromSparrow(Paths.image("menu/batch0/freeplay/sprNoice", null, false, "jpg"), Paths.file("images/menu/batch0/freeplay/sprNoice.xml"));
	buddyNoice.animation.addByPrefix("Noice", "", 20, true);
	buddyNoice.animation.play("Noice");
	buddyNoice.origin.set(0, 0);
	buddyNoice.scale.set(0.64, 0.64);
	buddyNoice.camera = sidcamera;
	buddyNoice.visible = false;
	add(buddyNoice);
	buddyNoiceSound = FlxG.sound.play(Paths.sound("batch0/Noice"), 0, true);
	buddyNoiceTimes = new FlxTimer();

	budDescripty = new FlxText(610, 410, 650, "", 30);
	budDescripty.font = Paths.font("arial.ttf");
	budDescripty.camera = sidcamera;
	add(budDescripty);

	budRank = new FlxText(1030, 100, 0, "");
	budRank.setFormat(Paths.font("times.ttf"), 260, 0, "center", FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	budRank.borderSize = 3;
	budRank.scale.x = 1.2;
	budRank.camera = sidcamera;
	budRank.antialiasing = true;
	add(budRank);

	budScore = new FlxText(0, 350, 0, "", 40);
	budScore.font = Paths.font("Good.ttf");
	budScore.camera = sidcamera;
	add(budScore);

	budPlay = new FlxText(sidcamera.width - 225, sidcamera.height - 100, 0, "PLAY!", 60);
	budPlay.font = Paths.font("Good.ttf");
	budPlay.camera = sidcamera;
	budPlay.antialiasing = true;
	budPlay.scale.set(0.9, 1.1);
	budPlay.angle = 5;
	FlxTween.tween(budPlay, {"scale.x": 1.1, "scale.y": 0.9, angle: -5}, 0.75, {type: FlxTweenType.PINGPONG});
	add(budPlay);

	budBack = new FlxText(20, 40, 0, "<-- back", 40);
	budBack.font = Paths.font("Good.ttf");
	budBack.camera = sidcamera;
	add(budBack);

	sidlimit = sidsongstext[sidsongstext.length-1].y + sidsongstext[sidsongstext.length-1].height;
	buddySelect(0);

	//jank workaround
	dontDoAnythin = true;
	new FlxTimer().start(0.001, function() {
		dontDoAnythin = false;
	}, 1);
}

function justDie() {
	if (chosed == true) {
		othershitfuckyou.bgColor = 0;
		sidcamerasongs.visible = true;
		sidcamera.visible = true;
		othershitfuckyou.visible = false;
		SELECTLEVEL.text = "SELECT LEVEL...";
		chosed = false;

		for (bus in 0...sidsongsdiff.length)
			remove(sidsongsdiff[bus]);

		sidsongsdiff = [];
		buddySelect(curSelected);
	}
	else close();
}

function update() {
	sidcamerasongs.scroll.y = FlxMath.bound(sidcamerasongs.scroll.y + (FlxG.mouse.wheel * -40), 0, (sidlimit) - sidcamerasongs.height);
	if (controls.BACK || FlxG.mouse.justPressedRight) justDie();

	var sht = [curSelected, sidsongs];
	if (chosed) sht = [curSubSelected, sidsongsdiff];
	if (controls.UP_P) buddySelect(FlxMath.wrap(sht[0] - 1, 0, sht[1].length-1));
	if (controls.DOWN_P) buddySelect(FlxMath.wrap(sht[0] + 1, 0, sht[1].length-1));

	var budYeah = false;
	if ((controls.ACCEPT || budYeah) && !dontDoAnythin) {
		if (otherUi == false) {
			PlayState.loadSong(sidsongs[curSelected].name, (chosed) ? sidsongsdiff[curSubSelected].text : "normal");
			FlxG.switchState(new PlayState());
		} else {
			//openSubState(new ModSubState("batch0/PJFreeplaySongChoose", [sidsongs[curSelected]]));
			chosed = true;
			curSubSelected = 0;
			for (it=>i in sidsongs[curSelected].difficulties) {
				var text = new FlxText(48, 160 + 120 * it, 9999, i, 55);
				text.font = Paths.font("Good.ttf");
				text.camera = othershitfuckyou;
				add(text);
				sidsongsdiff.push(text);
			}

			sidcamerasongs.visible = false;
			//sidcamera.visible = false;
			othershitfuckyou.visible = true;
			SELECTLEVEL.text = "SELECT ACT...";
			buddySelect(0);
		}
	}
}

function buddySelect(i) {
	if (chosed) curSubSelected = i; else curSelected = i;
	var disLocked = FunkinSave.getSongHighscore(sidsongs[i].name, "normal").score == 0;

	if (chosed) {
		for (j in 0...sidsongsdiff.length)
			sidsongsdiff[j].color = -1;

		sidsongsdiff[i].color = FlxColor.YELLOW;
		disLocked = FunkinSave.getSongHighscore(sidsongs[curSelected].name, sidsongsdiff[i].text).score == 0;
	} else {
		var buddyCover = Paths.getPath("songs/"+sidsongs[i].name+"/cover.jpg");
		if (Assets.exists(buddyCover) && !disLocked)
			buddyCovers.loadGraphic(buddyCover);
		else
			buddyCovers.loadGraphic(Paths.image("menu/batch0/freeplay/default", null, false, "jpg"));

		for (t=>text in sidsongstext) {
			if (t == i) {
				text.text = "> " + sidsongs[t].displayName;
				if (!FlxMath.inBounds(text.y + text.height, sidcamerasongs.scroll.y, sidcamerasongs.height + sidcamerasongs.scroll.y)) {
					sidcamerasongs.scroll.y = Math.max(0, text.y + text.height - sidcamerasongs.height);
				}
			}
			else text.text = sidsongs[t].displayName;
		}

		buddyNoice.visible = true;
		buddyNoiceSound.volume = 0.15;
		if (buddyNoiceTimes.active) buddyNoiceTimes.cancel();
		if (!disLocked)
			buddyNoiceTimes.start(0.25, function() {
				buddyNoice.visible = false;
				buddyNoiceSound.volume = 0;
			}, 1);
	}

	otherUi = ((sidsongs[curSelected].difficulties.length > 1) && !chosed) ? true : false;

	budScore.text = (!disLocked || otherUi) ? FunkinSave.getSongHighscore(sidsongs[curSelected].name, "normal").score : "";

	if (chosed) {
		budScore.text = FunkinSave.getSongHighscore(sidsongs[curSelected].name, sidsongsdiff[i].text).score;
		buddyNoiceSound.volume = 0;
	}
}

function destroy() {
	FlxG.cameras.remove(sidcamera);
	FlxG.cameras.remove(sidcamerasongs);
	FlxTween.cancelTweensOf(budPlay);
	buddyNoiceSound.destroy();
}