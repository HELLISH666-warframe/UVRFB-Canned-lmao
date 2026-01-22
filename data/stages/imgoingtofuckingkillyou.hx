import flixel.addons.effects.FlxTrail;
import flixel.addons.effects.FlxTrailArea;
var bloodshedTrail = null;
var boom:FlxSound;
boom = FlxG.sound.load(Paths.sound("fanmade/alyxs_stuff/boom"));
function postCreate() {
	sadmoon.screenCenter(FlxAxes.X);
	backcity.screenCenter(FlxAxes.X);
	kamehameha.screenCenter(FlxAxes.X);
	kamehameha.alpha=0;
	penty.screenCenter(FlxAxes.X);
	frontcity.screenCenter(FlxAxes.X);
	backhill.screenCenter(FlxAxes.X);
	fronthill.screenCenter(FlxAxes.X);
	hind.screenCenter(FlxAxes.X);
	hind.alpha=0;
	foreskin.screenCenter(FlxAxes.X);
	foreskinclean.screenCenter(FlxAxes.X);
	noskin.screenCenter(FlxAxes.X);
	noskin.alpha=0;
	island.screenCenter(FlxAxes.X);
	island.alpha=0;
	island2.screenCenter(FlxAxes.X);
	island2.alpha=0;
	deadly1.scale.set(1,0.8);
	deadly1.camera=camOther2;
	deadly1.alpha=0;
	deadly2.scale.set(1,0.8);
	deadly2.camera=camOther2;
	deadly2.alpha=0;
	googoo.camera=camOther2;
	googoo.alpha=0;
	googoo.screenCenter();
	grade.camera=camOther2;
	grade.alpha=1;
	grade.screenCenter();
	alive.camera=camHUD;
	alive.alpha=0;
	alive.screenCenter();
	alivefake.camera=camOther2;
	alivefake.alpha=0;
	alivefake.screenCenter();
	deadfake.camera=camHUD;
	deadfake.alpha=0;
	deadfake.screenCenter();
	dead.camera=camOther2;
	dead.alpha=0.25;
	dead.screenCenter();
}
function resettrial(){		
	remove(bloodshedTrail);
	bloodshedTrail = new FlxTrail(dad, null, 4, 24, 0.3, 0.069); //nice
	insert(members.indexOf(dad)-1, bloodshedTrail);
}