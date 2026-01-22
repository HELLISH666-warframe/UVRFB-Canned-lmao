function postCreate() {
    bg.screenCenter();
	popup.screenCenter();
	ground.screenCenter(FlxAxes.X);
	ground.antialiasing = true;
	ground.active = false;
	error.updateHitbox();
	error.antialiasing = true;
	error2.updateHitbox();
	error2.antialiasing = true;
}