var Intensity:Float = 40;

var camOffX:Float = 0;
var camOffY:Float = 0;
var anim;
var flashSprite:FlxSprite;

var cameraX:Float;
var cameraY:Float;
var startCam:Bool = false;
var dadPos = [0,0];
var bfPos = [0,0];
function update(elapsed:Float) {
   // trace(curCameraTarget);
    flashSprite.alpha = FlxMath.lerp(flashSprite.alpha, 0, FlxMath.bound(elapsed * 9, 0, 1));
}
function postUpdate() {
    if (startCam){
    if (curCameraTarget == 1){anim = strumLines.members[1].characters[0].getAnimName();
    }
    else{anim = strumLines.members[0].characters[0].getAnimName();
    }
    if (curBeat < 38){
        switch(anim){
        case "singLEFT"|"singLEFT-alt":camOffY = 0; camOffX = 0 - Intensity;
        case "singRIGHT"|"singRIGHT-alt":camOffY = 0; camOffX = Intensity;
        case "singUP"|"singUP-alt":camOffX = 0; camOffY = 0 - Intensity;
        case "singDOWN"|"singDOWN-alt":camOffX = 0; camOffY = Intensity;
        case "idle"|"idle-alt":camOffX = 0; camOffY = 0;
        }
    }
    if ((curBeat >= 38) && (curBeat < 72)){
        switch(anim){
        case "singLEFT"|"singLEFT-alt":camOffY = 0 -375;  camOffX = 0 - Intensity;
        case "singRIGHT"|"singRIGHT-alt":camOffY = 0 -375; camOffX = Intensity;
        case "singUP"|"singUP-alt":camOffX = 0; camOffY = 0 - Intensity -375;
        case "singDOWN"|"singDOWN-alt":camOffX = 0; camOffY = Intensity -375;
        case "idle"|"idle-alt":camOffX = 0; camOffY = -375;
        trace(camOffY);
        }
    }
    if ((curBeat >= 72) && (curBeat < 108)){
        switch(anim){
        case "singLEFT"|"singLEFT-alt":camOffY = 0 -275; camOffX = 0 - Intensity;
        case "singRIGHT"|"singRIGHT-alt":camOffY = 0 -275; camOffX = Intensity;
        case "singUP"|"singUP-alt":camOffX = 0; camOffY = 0 - Intensity -275;
        case "singDOWN"|"singDOWN-alt":camOffX = 0; camOffY = Intensity -275;
        case "idle"|"idle-alt":camOffX = 0; amOffY = -275;
        }
    }
    if ((curBeat >= 108) && (curBeat < 550)){
        switch(anim){
        case "singLEFT"|"singLEFT-alt":camOffY = 0;  camOffX = 0 - Intensity;
        case "singRIGHT"|"singRIGHT-alt":camOffY = 0; camOffX = Intensity;
        case "singUP"|"singUP-alt":camOffX = 0; camOffY = 0 - Intensity;
        case "singDOWN"|"singDOWN-alt":camOffX = 0; camOffY = Intensity;
        case "idle"|"idle-alt":camOffX = 0; camOffY = 0;
        }
    }
    if ((curBeat >= 550) && (curBeat < 556)){
        switch(anim){
        case "singLEFT"|"singLEFT-alt":camOffY = 0 -375; camOffX = 0 - Intensity;
        case "singRIGHT"|"singRIGHT-alt":camOffY = 0 -375; camOffX = Intensity;
        case "singUP"|"singUP-alt":camOffX = 0; camOffY = 0 - Intensity -375;
        case "singDOWN"|"singDOWN-alt":camOffX = 0; camOffY = Intensity -375;
        case "idle"|"idle-alt":camOffX = 0; camOffY = -375;
        }
    }
}
    if (startCam){
        cameraX = camFollow.x;
        cameraY = camFollow.y;
        bfX = boyfriend.x;
        bfY = boyfriend.y;
        dadX = dad.x;
        dadY = dad.y;

    if (curCameraTarget == 1){
        cameraX = getMid(bfX , boyfriend.width) - 100;
        cameraY = getMid(bfY , boyfriend.height) +160;
        /*cameraX = cameraX - bfPos[0];
        cameraY = cameraY + bfPos[1];
        */
    }if (curCameraTarget == 0){
        cameraX = getMid(dadX , dad.width) + 150;
        cameraY = getMid(dadY , dad.height) +1;
        /*cameraX = cameraX + dadPos[0];
        cameraY = cameraY + dadPos[1];
        */
    }
    camFollow.x= cameraX + camOffX;
    camFollow.y= cameraY + camOffY;
    }
}
function postCreate() {
    var canStartCamera = new FlxTimer().start(0.4,{
       startCam = true;});
    findCharCam();
	flashSprite = new FlxSprite(0, 0).makeGraphic(1920, 1080, 0xFFb30000);
    flashSprite.camera = camHUD;
	add(flashSprite);
	flashSprite.alpha = 0;
    /*trace(boyfriend.getCameraPosition());
    dad.cameraOffset.set(435,34535);
    */
    remove(healthBarBG);
    remove(healthBar);
    insert(0,healthBar);
    healthBar.screenCenter(FlxAxes.X);
	healthBar.setGraphicSize(600, 40);
    tecBarWhite = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/tecBarWhite'));
	tecBarWhite.scrollFactor.set(0,0);
	tecBarWhite.camera = camHUD;
	tecBarWhite.scale.set(0.6,0.6);
	tecBarWhite.screenCenter(FlxAxes.X);
	tecBarWhite.alpha=0;
	insert(members.indexOf(healthBar)-1, tecBarWhite); 

    conBar = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/conallBar'));
	conBar.scrollFactor.set(0,0);
	conBar.camera = camHUD;
	conBar.scale.set(0.65,0.65);
	conBar.screenCenter(FlxAxes.X);
	insert(members.indexOf(healthBar)+1, conBar); 

    conTxt = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/conallText'));
	conTxt.scrollFactor.set(0,0);
	conTxt.camera = camHUD;
	conTxt.scale.set(0.5,0.5);
	conTxt.screenCenter(FlxAxes.X);
    insert(members.indexOf(conBar)+1, conTxt); 

    tecBar = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/techneBar'));
	tecBar.scrollFactor.set(0,0);
	tecBar.camera = camHUD;
	tecBar.scale.set(0.6,0.6);
	tecBar.screenCenter(FlxAxes.X);
	tecBar.alpha=0;
    insert(members.indexOf(conTxt)-1, tecBar); 

    tecBarBlack = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/tecBarBlack'));
	tecBarBlack.scrollFactor.set(0,0);
	tecBarBlack.camera = camHUD;
	tecBarBlack.scale.set(0.6,0.6);
	tecBarBlack.screenCenter(FlxAxes.X);
	tecBarBlack.alpha=0;
    insert(members.indexOf(tecBar)-1, tecBarBlack); 

    tecTxt = new FlxSprite(500,540).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/coolHPBars/techneText'));
	tecTxt.scrollFactor.set(0,0);
	tecTxt.camera = camHUD;
	tecTxt.scale.set(0.55,0.55);
	tecTxt.screenCenter(FlxAxes.X);
	tecTxt.alpha=0;
    insert(members.indexOf(tecBar)+1, tecTxt); 
}
function getMid(value:Float, size:Float){
   fixSize = 0;
   if (size == null){
    fixSize = value;
    }else{
      fixSize = size;
   }
   result = value + (size / 2);

   return result;
}
function findCharCam(){
   cameraDad = dad.cameraOffset;
   dadPos[0] = cameraDad[0];
   dadPos[1] = cameraDad[1];

   cameraBf = boyfriend.cameraOffset;
   bfPos[0] = cameraBf[0];
   bfPos[1] = cameraBf[1];
}
function beatHit(curBeat:Int) {
    if (curBeat == 36){
		FlxTween.tween(healthBar, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(conBar, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(conTxt, {alpha: 0}, 1, {ease: FlxEase.quadIn});
		FlxTween.tween(tecBarWhite, {alpha: 1}, 1, {ease: FlxEase.quadIn});
	}
	if (curBeat == 40){
		FlxTween.tween(healthBar, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBarWhite, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(conBar, {alpha: 0}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBar, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecTxt, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
		FlxTween.tween(tecBarBlack, {alpha: 1}, 0.25, {ease: FlxEase.quadOut});
	}
    if (curBeat == 316){
		tecBar.alpha=0;
		tecTxt.alpha=0;
		tecBarBlack.alpha=0;
		healthBar.alpha=0;
	}
	if (curBeat == 448){
		tecBar.alpha=1;
		tecTxt.alpha=1;
		tecBarBlack.alpha=1;
		healthBar.alpha=1;
	}
}