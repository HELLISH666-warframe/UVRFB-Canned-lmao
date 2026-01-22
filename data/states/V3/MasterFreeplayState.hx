var image = new FlxSprite().loadGraphic(Paths.image('menus/V3/freeplay/freeplay select/ron'));
var vimage = new FlxSprite().loadGraphic(Paths.image('menus/V3/freeplay/freeplay select/ground'));
var extraImage = new FlxSprite().loadGraphic(Paths.image('menus/V3/freeplay/freeplay select/doyne'));
var classicImage = new FlxSprite(0,100).loadGraphic(Paths.image('menus/V3/freeplay/freeplay select/evilron'));
var intendedColor:Int;
var colorTween;
static var curSelectedMaster:Int = 0;
var cooltext = new FlxText(0, 5, 0).setFormat(Paths.font("vcr.ttf"), 96, FlxColor.WHITE);
var cameraText = new FlxCamera();
var time:Float = 0;
var loBg = new FlxSprite().makeSolid(433, 999, 0xFF000000);
var loBgt = new FlxSprite().makeSolid(866, 999, 0xFF000000);
var crt = new CustomShader("fake CRT");
var chrom = new CustomShader("chromatic aberration");
var accepted:Bool=false;

var mirror = new CustomShader("mirror");

function create() {
	cameraText.bgColor = 0;
	FlxG.cameras.add(cameraText, false);
	if (FlxG.save.data.crt) FlxG.camera.addShader(crt);
	if (FlxG.save.data.chrom) cameraText.addShader(chrom);
	cameraText.addShader(mirror);
	mirror.zoom=1;

	bg = CoolUtil.loadAnimatedGraphic(new FlxSprite(), Paths.image('menus/V3/freeplay/mainbgAnimate'));
	bg.scale.set(2,2);
	insert(1,bg);

	vimage.camera = cameraText;
	insert(1,vimage);

	for(i in [loBg,loBgt]){
		i.alpha = 0.5;
		insert(2,i);
		i.camera = cameraText;
	}

	image.camera = classicImage.camera = extraImage.camera = cameraText;
	add(image);
	classicImage.scale.set(1.3,1.3);
	add(classicImage);
	add(extraImage);
	changeSelection(0);

	for(i in [image,bg,vimage,extraImage]) i.screenCenter();

	cooltext.camera = cameraText;
	add(cooltext);
	cooltext.y = 125;
}
function update(elapsed:Float) {
	time += elapsed;
    vimage.color = bg.color;
	chrom.rOffset = chromeOffset*Math.sin(time);
	chrom.bOffset = -chromeOffset*Math.sin(time);
    cooltext.y += Math.sin(time*4)/2;
	switch(curSelectedMaster) {
		case 0: cooltext.text = "MAIN";
		case 1: cooltext.text = "CLASSIC";
		case 2: cooltext.text = "EXTRAS";
		case 3: cooltext.text = "FANMADE";
		case 4: cooltext.text = "UNFINSHED";
	}
	cooltext.screenCenter(FlxAxes.X);
	if (controls.RIGHT_P||controls.LEFT_P){
		changeSelection(controls.RIGHT_P ? 1 : -1);
		CoolUtil.playMenuSFX(0, 0.7);
	}
	if (controls.UP_P){
		accepted=true;
	/*
	curSelectedMaster = 3;
	effectTween = FlxTween.num(2, 3, 0.5, {type: FlxEase.ONESHOT,ease: FlxEase.quintIn}, function(strength:FlxTween)
	{
		mirror.y = strength;
	});
	*/
	curSelectedMaster = 4;
	newColor = 0x000000;
	for(i in members){
		colorTween = FlxTween.color(i, 0.5, i.color, newColor);
	}
	FlxG.sound.play(Paths.sound('ANGRY_TEXT_BOX'), 1);
	cameraText.shake(0.0099, 1);
	new FlxTimer().start(1.2, function(tmr:FlxTimer)
		FlxG.switchState(new FreeplayState())
	);
		FlxG.save.data.freeplaything = 4;
		FlxG.camera.fade(FlxColor.WHITE, 0.9, false);
		cameraText.fade(FlxColor.RED, 0.9, false);
		FlxTween.tween(cameraText, {y: cameraText.y + 999}, 1, {ease: FlxEase.quintIn});
		FlxTween.tween(FlxG.camera, {y: FlxG.camera.y + 999}, 1, {ease: FlxEase.quintIn});
	}
	if (controls.DOWN_P){
		accepted=true;
	curSelectedMaster = 3;
		new FlxTimer().start(1.2, function(tmr:FlxTimer)
		FlxG.switchState(new FreeplayState())
		);
		FlxG.save.data.freeplaything = 3;
		FlxG.camera.fade(FlxColor.WHITE, 0.9, false);
		cameraText.fade(FlxColor.BLACK, 0.9, false);
		FlxTween.tween(cameraText, {y: cameraText.y - 999}, 1, {ease: FlxEase.quintIn});
		FlxTween.tween(FlxG.camera, {y: FlxG.camera.y - 999}, 1, {ease: FlxEase.quintIn});
	}
	if(controls.ACCEPT) {
		accepted=true;
		FlxG.switchState(new FreeplayState());

		FlxG.save.data.freeplaything = curSelectedMaster;
	}
	if(controls.BACK)FlxG.switchState(new MainMenuState());
}
function changeSelection(p) {
	curSelectedMaster += p;
	if (curSelectedMaster < 0) curSelectedMaster = 2;
	if (curSelectedMaster >= 3) curSelectedMaster = 0;
	for(i in [image,classicImage,extraImage]){
		FlxTween.globalManager.cancelTweensOf(i);
		i.color = FlxColor.GRAY;
	}
	
	var newColor = 0xFF8C81D9;
	switch (curSelectedMaster) {
		case 0:
			loBgt.x = 866;
			loBg.x = 433;
			image.color = FlxColor.WHITE;
		case 1:
			loBgt.x = 866;
			loBg.x = 0;
			newColor = 0xFFC63C3f;
			classicImage.color = FlxColor.WHITE;
		case 2:
			loBgt.x = 0;
			loBg.x = -433;
			newColor = 0xFFDCF5F4;
			extraImage.color = FlxColor.WHITE;
	}
	if(newColor != intendedColor) {
		if(colorTween != null) colorTween.cancel();
		intendedColor = newColor;
		colorTween = FlxTween.color(bg, 1, bg.color, intendedColor, {
			onComplete: function(twn:FlxTween) {
				colorTween = null;
			}
		});
	}
}