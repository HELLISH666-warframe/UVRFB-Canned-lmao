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