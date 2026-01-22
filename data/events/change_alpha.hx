function onEvent(_) {
	if (_.event.name == 'change_alpha') {
		var alpha_EVENT:Float = Std.parseFloat(_.event.params[0]);
		var object:String = _.event.params[1];
		var speed:Float = Std.parseFloat(_.event.params[2]);
		trace(_.event.params[1]);
		FlxTween.tween(healthBarBG1, {alpha: 1}, _.event.params[2],{ ease: FlxEase.sineInOut});
	}
}