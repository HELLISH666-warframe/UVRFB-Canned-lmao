import lime.ui.Window;
var time:Float = 0;
var vhs:CustomShader  = new CustomShader("chromatic aberration");
if (PlayState.difficulty.toLowerCase() == 'hard') {

override function update(elapsed:Float){time += elapsed;
	vhs.data.rOffset.value = [0.005*Math.sin(time)];
	vhs.data.bOffset.value = [-0.005*Math.sin(time)];}
	
function create() {
	window.fullscreen=false;
	window.borderless=true;
	trace(window.y);
	window.y=window_y;
	window.x=window_x;
}
function postCreate() {
	window.opacity=0;
	FlxTween.tween(window, {opacity: 1}, 14);
	camHUD.addShader(vhs);
	FlxG.camera.addShader(vhs);
	vhs.data.rOffset.value = [3/2];
	vhs.data.gOffset.value = [0.0];
	vhs.data.bOffset.value = [3 * -1];
}
function destroy() {
	window.fullscreen=false;
	window.borderless=false;
	window.opacity=1;
	window.y=window_y;
	window.x=window_x;
}

function stepHit(curStep){
	switch (curStep) {
		case 127:
		FlxTween.tween(window, {x: window.x+1400}, 0.4, {ease: FlxEase.expoOut});
		case 130:
		FlxTween.tween(window, {x: window.x-2800}, 0.4, {ease: FlxEase.expoOut});
		case 134:
		FlxTween.tween(window, {x: window_x}, 0.45, {ease: FlxEase.elastic});
		case 276:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 278:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 280:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 282:
		FlxTween.tween(window, {y: window_y}, 0.8, {ease: FlxEase.expoOut});
		case 289:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 291:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 293:
		FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
		case 295:
		FlxTween.tween(window, {y: window_y}, 0.6, {ease: FlxEase.expoOut});
	}
}
}