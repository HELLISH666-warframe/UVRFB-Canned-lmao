import lime.ui.Window;
import flixel.system.scaleModes.RelativeScaleMode;
function create() {
	window.fullscreen=false;
	trace(window.y);
	window.y=window_y;
	window.x=window_x;
}
function postCreate() {
	window.opacity=0;
	FlxTween.tween(window, {opacity: 1}, 14);
	window.resize(1280,720);
}
function destroy() {
	window.fullscreen=false;
	window.borderless=false;
	window.opacity=1;
	window.y=window_y;
	window.x=window_x;
	camHUD.height=720;
}

function stepHit(curStep){
	switch (curStep) {
		case 383:
		window.borderless=true;
		//FlxTween.tween(window, {y: window.y+200}, 0.3, {ease: FlxEase.expoOut});
	}
}