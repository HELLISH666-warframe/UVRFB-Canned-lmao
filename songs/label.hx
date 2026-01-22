import flixel.text.FlxTextBorderStyle;
var kadeshit:FlxTextkadeshit = new FlxText();
var swordEngine = (["Tristan","Dave","Bambi"])[Math.floor(Math.random() * 3+.1)];
function postCreate() {
	if (StringTools.endsWith(curSong, "classic")||classic){
	kadeshit = new FlxText(20, 5, 0, curSong + " - Hard | KE 1.5.4 (ron eidtion)",12);
	kadeshit.setFormat(Paths.font("vcr.ttf"),16, FlxColor.WHITE,'center',FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
	iconP1.setIcon('oldbf');
	boyfriend.iconColor = 0x01D8FF;
	}
	switch(curSong)
	{
		case "slammed"|"holy-shit-dave-fnf":
		kadeshit = new FlxText(20, 5, 0, curSong + " - Hard | " + swordEngine + " Engine (KE 1.2)",12);
		kadeshit.setFormat(Paths.font("comic.ttf"),16, FlxColor.WHITE,FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);
	}
	for(label in [kadeshit]) {
		label.x = 15 + (162 * label);
		label.camera = camHUD;
		label.y= (PlayState.downscroll ? -20 : 23)*30;
		add(label);
	}
}
if (StringTools.endsWith(curSong, "classic")||PlayState.SONG.meta.classic){
	doIconBop=false;
override function beatHit(){
	if (curBeat % 2 == 0) {
		iconP1.scale.set(1.1,0.9);
		iconP2.scale.set(1.1,0.9);
	
		FlxTween.tween(iconP1,{'scale.x':1,'scale.y':1},Conductor.crochet / 1000 * 1,{ease: FlxEase.backOut});
		FlxTween.tween(iconP2,{'scale.x':1,'scale.y':1},Conductor.crochet / 1000 * 1,{ease: FlxEase.backOut});

		iconP1.updateHitbox();
		iconP2.updateHitbox();
	}
}
}