function onSongStart() FlxTween.tween(window, {x: 925}, 1, {ease: FlxEase.quadOut});
function postCreate(){	
	window = new FlxSprite(1400, 25).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/newCred/credWindow'));
	add(window);
	cursor = new FlxSprite(-50, -50).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/newCred/credMouse'));
	add(cursor);
	for(i in [window,cursor]){
	i.updateHitbox();
	i.antialiasing = false;
	i.scrollFactor.set(0, 0);
	i.camera=camHUD;
	}
}
function beatHit(curBeat) {			
	switch(curBeat){
		case 6: FlxTween.tween(cursor, {x: 1090}, 0.75, {ease: FlxEase.quadOut});
		FlxTween.tween(cursor, {y: 625}, 0.75, {ease: FlxEase.quadOut});
		case 10: FlxTween.tween(cursor.scale, {x: 1,y:1}, 0.25, {ease: FlxEase.quadOut});//Why????
		FlxTween.tween(window.scale, {x: 0.95,y:0.95}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(window, {alpha: 0}, 0.25, {ease: FlxEase.quadOut,onComplete: ()-> {remove(window);}});
		cursor.scale.set(0.9, 0.9);
		case 12: FlxTween.tween(cursor, {y: 800}, 0.5, {ease: FlxEase.quadIn,onComplete: ()-> {remove(cursor);}});
	}
}