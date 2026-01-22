var barb:FlxSprite;
var uwu_no = 0.0025;
//For_icon_shit
var rae = 180;

//For_hud_shit
var uwu = -15;
var owo = -5;
var owo2 = -30;
var owu = 3;
var credit = 'by test';
var origin;
var origin2;
function postCreate(){
	origin=healthBar.x;
	origin2=healthBarBG.x;
	stage.getSprite("pentadalt").alpha = 0.75;

    FlxG.camera.angle = 180;
    FlxG.camera.zoom = 2.2;
    camHUD.zoom = 5;
    camHUD.angle = 180;
	stage.getSprite("deadly1").alpha = 0;
	stage.getSprite("deadly2").alpha = 0;

	barb = new FlxSprite(healthBar.x-38,healthBar.y-95).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/bloodsheddside/bbar'));
    barb.camera = camHUD;
    //add(barb);
    //addLuaSprite('barb', true)
    barb.scale.set(1.025,1.025);
    insert(members.indexOf(healthBar)+1, barb); 
    //setObjectOrder('barb', getObjectOrder('healthBar') + 1)
    barb.scale.set(1.025,1.025);
    healthBar.visible=true;
    barb.visible=false;
    healthBarBG.visible=false;
}

function onSongStart() {

	FlxTween.tween(iconP1, {y: 560}, 0.5, {ease: FlxEase.circInOut});
    FlxTween.tween(iconP2, {y: 560}, 0.5, {ease: FlxEase.circInOut});
    FlxTween.tween(healthBar, {y: 655}, 10.38, {ease: FlxEase.circInOut});

	FlxTween.tween(dad, {y: 100}, 1, {ease: FlxEase.circIn});
    FlxTween.tween(boyfriend, {y: 450}, 1, {ease: FlxEase.circIn});
    FlxTween.tween(stage.getSprite("dead"), {alpha: 0.2}, 10.38);
    FlxTween.tween(FlxG.camera, {angle: 0}, 10.38, {ease: FlxEase.quadInOut});
    FlxTween.tween(FlxG.camera, {zoom: 0.9}, 10.38, {ease: FlxEase.quadInOut});
    FlxTween.tween(camHUD, {angle: 0}, 7.78, {ease: FlxEase.quadInOut});
    FlxTween.tween(camHUD, {zoom: 0.6}, 7.78, {ease: FlxEase.quadInOut});
}
function postUpdate(elapsed:Float) {
    if (curBeat == 260){
        barb.visible=true;
        barb.screenCenter(FlxAxes.X);
        healthBarBG.scale.set(0.001,0.001);
        healthBar.screenCenter(FlxAxes.X);
    }
}
function beatHit(curBeat:Int) {
	if (curBeat % 1 == 0){
	uwu = -uwu;
	owo = -owo;
	owo2 = -owo2;
	if ((curBeat >= 356) && (curBeat < 680)){
		FlxTween.tween(healthBar, {x: origin}, 0.4, {ease: FlxEase.quadOut});
		FlxTween.tween(healthBarBG, {x: origin2}, 0.4, {ease: FlxEase.quadOut});
		FlxTween.tween(barb, {x: origin2-38}, 0.4, {ease: FlxEase.quadOut});
		healthBar.x=425;
		healthBarBG.x=425;
		barb.x=387;
	}
	if (curBeat == 680){
		healthBar.alpha=0;
		healthBarBG.alpha=0;
		barb.alpha=0;
	}
}
	FlxTween.tween(iconP1, {"scale.x":1,"scale.y":1}, Conductor.crochet/1100, {ease: FlxEase.quadOut});
	FlxTween.tween(iconP2, {"scale.x":1,"scale.y":1}, Conductor.crochet/1100, {ease: FlxEase.quadOut});

	if (curBeat %2 == 0){
		iconP1.scale.set(1.9,1.5);
		iconP2.scale.set(1.9,1.5);
	}

	if (curBeat %2 == 1){
		iconP1.scale.set(1.5,1.9);
		iconP2.scale.set(1.5,1.9);
	}
	if (curBeat >= 356){
		rae = -rae;
		FlxTween.tween(iconP2, {angle:0}, Conductor.crochet/1000, {ease: FlxEase.quadOut});
		iconP2.angle=rae;
	}
}

function onDadHit(e){
    if (curBeat >= 260){
        FlxG.camera.shake(0.0024, 0.05);
        camHUD.shake(0.0012, 0.05);
    }
    if (health > 0.05){
        health=health-uwu_no;
    }
}