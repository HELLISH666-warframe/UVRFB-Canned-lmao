if (PlayState.difficulty.toLowerCase() == '2.5'){
function beatHit(curBeat) {
	switch(curBeat) {
		case 36: 
		FlxTween.tween(FlxG.camera, {zoom: 1.5}, 0.4, {ease: FlxEase.expoOut,});
		dad.playAnim('cheer', true);
		case 81|147|151|159|172|187: 
		FlxTween.tween(FlxG.camera, {zoom: 1.5}, 0.4, {ease: FlxEase.expoOut,});
	}
}
}