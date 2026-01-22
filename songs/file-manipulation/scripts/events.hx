import openfl.system.Capabilities;
import lime.ui.Window;
import openfl.Lib;
import lime.app.Application;
import flixel.system.scaleModes.StageSizeScaleMode;
import flixel.system.scaleModes.RatioScaleMode;

var time:Float = 0;
var mosaic:CustomShader = new CustomShader("mosaic");
var chrom:CustomShader  = new CustomShader("chromatic aberration");
var black:FlxSprite = new FlxSprite(-299, -200).makeSolid(1600*2, 1200, 0xFF000000);
if (PlayState.difficulty.toLowerCase() == 'hard'||PlayState.difficulty.toLowerCase() == '2.5') {
function create() {
	window.fullscreen=false;
	window.borderless=true;
	trace(window.y);
	window.y=window_y;
	window.x=window_x;
}
function postCreate() {
	window.opacity=0;
	FlxTween.tween(window, {opacity: 1}, 17);
	window.resize(1280,720);
	FlxTween.tween(window, {y: window.y+1400}, 4);
	black.scrollFactor.set(0,0);
	insert(11, black).alpha=0.0001;
}
function destroy() {
	window.fullscreen=false;
	window.borderless=false;
	window.opacity=1;
	window.y=window_y;
	window.x=window_x;
}
}

override function update(elapsed:Float){time += elapsed;
	chrom.data.rOffset.value = [0.011*Math.sin(time)];
	chrom.data.bOffset.value = [-0.011*Math.sin(time)];
	var currentBeat2:Float = (Conductor.songPosition / 1000)*(Conductor.bpm/170);
	var currentBeat:Float = (Conductor.songPosition /100)/(Conductor.bpm/170);

	if ((curBeat >= 264) && (curBeat < 325)){
        window.x=0- -500 *  Math.cos((currentBeat2*0.33)*Math.PI);
        window.y=340- 200 *  Math.cos((currentBeat2*0.42)*Math.PI);
		for (i in 0...cpuStrums.members.length) cpuStrums.members[i].y += Math.sin((curStep+i*8)/4);
		for (i in 0...playerStrums.members.length) playerStrums.members[i].y += Math.sin((curStep+i*8)/4);

		for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.1) * 5)}, 0.25);}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.2) * 5),}, 0.25);}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.3) * 5)}, 0.25);}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.4) * 5)}, 0.25);}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.5) * 5)}, 0.25);}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.6) * 5)}, 0.25);}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.7) * 5)}, 0.25);}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.8) * 5)}, 0.25);}
    }
}

function stepHit(curStep){
	if (PlayState.difficulty.toLowerCase() == 'hard'||PlayState.difficulty.toLowerCase() == '2.5') {
		switch (curStep) {
			case 255:
			FlxTween.tween(window, {y: window.y-1400}, 1, {ease: FlxEase.quadInOut, 
			onComplete: function(twn:FlxTween) 
				{window.borderless=false;
				}});
	/*		case 460:
				dad.visible = false;
				ronAnimation.x = dad.x-140;
				ronAnimation.y = dad.y+55;
				ronAnimation.visible = true;
				ronAnimation.animation.play('idle', true);
	*/		case 507: camHUD.visible = false;
			case 459: FlxTween.tween(window, {opacity: 0}, 3);
			window.borderless=true;
			FlxTween.tween(black, {alpha: 1}, 2, {ease: FlxEase.circInOut});
			case 513: FlxTween.tween(FlxG.camera, {zoom: 2.2}, 4);
			case 532: FlxTween.cancelTweensOf(FlxG.camera);
			case 535: FlxTween.tween(FlxG.camera, {zoom: 0.8}, 2);
			case 543: window.opacity=1;
			black.alpha=0;
			case 545: FlxTween.cancelTweensOf(FlxG.camera);
			case 544: camHUD.visible = true;
			case 560: defaultCamZoom = 1;
			case 563: defaultCamZoom = 0.88;
		/*	case 538:
				PlayStateChangeables.scrollSpeed = 3.5;
				var xx = dad.x-20;
				var yy = dad.y+60;
				remove(dad);
				dad = new Character(xx, yy, 'ateloron');
				add(dad);
				iconP2.animation.play('ateloron');
				ronAnimation.visible = false;
		*/	case 544: camHUD.visible = true;
			case 556:
				defaultCamZoom = 0.58;
				FlxTween.tween(FlxG.camera, {angle: 359.99}, 0.5, {ease: FlxEase.expoOut});
				FlxTween.tween(window, {x: window_x+1500,y: window_y+1500}, 0.2, {ease: FlxEase.expoOut, 
			onComplete: function(twn:FlxTween) 
				{trace(curStep);
				}});
			case 561:
				window.x=window_x-1500;
			case 562:
				FlxTween.cancelTweensOf(FlxG.camera);
				FlxG.camera.angle = 0;
				defaultCamZoom = 0.88;
				FlxTween.tween(window, {x: window_x,y: window_y}, 0.5, {ease: FlxEase.expoOut});
			case 816|820|824|828|848|852|856|880|884|888|892|912|916|920|924:
				window.opacity=0.1;
				//FlxTween.tween(window, {x: window_x+200,y: window_y+200}, 0.5, {ease: FlxEase.expoOut});
				FlxG.camera.angle = 5;
				defaultCamZoom += 0.0125;
				FlxG.camera.zoom += 0.0125;
			case 818|822|826|830|850|854|858|882|886|890|894|914|918|922|926:
				window.opacity=0.4;
				//FlxTween.tween(window, {x: window_x-300,y: window_y-300}, 0.5, {ease: FlxEase.expoOut});
				FlxG.camera.angle = -5;
				defaultCamZoom += 0.0125;
				FlxG.camera.zoom += 0.0125;	
			case 832|864|896:
				FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.expoOut,});
				defaultCamZoom = 0.88;			
			case 928: 
				FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.expoOut,});
				defaultCamZoom = 0.9;
				window.opacity=1;
				FlxTween.tween(window, {x: window_x,y: window_y}, 2, {ease: FlxEase.expoOut});
			case 1025: FlxTween.tween(window, {opacity: 0}, 2);
			case 1046: FlxTween.tween(camGame, {alpha: 0}, 0.25, {ease: FlxEase.expoOut,});
			case 1056:
				window.opacity=1;
				camGame.alpha = 1;
				if (FlxG.save.data.mosaic) {mosaic.data.uBlocksize.value = [8];
				camHUD.addShader(mosaic);FlxG.camera.addShader(mosaic);}
			case 1302: FlxTween.tween(camGame, {alpha: 0}, 0.25, {ease: FlxEase.expoOut,});
			FlxTween.tween(window, {x: window_x,y: window_y}, 0.8, {ease: FlxEase.expoOut});
		for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {angle: 0,y:50}, 0.5, {ease: FlxEase.quadOut});}
			case 1312:
				camGame.alpha = 1;
				if (FlxG.save.data.chrom) {FlxG.camera.addShader(chrom);camHUD.addShader(chrom);
				chrom.data.rOffset.value = [1];chrom.data.gOffset.value = [0.0];
				chrom.data.bOffset.value = [1 * -1];}
			case 2080:FlxTween.tween(window, {opacity: 0}, 3);
		}
	
/*			if ((curStep >= 538) && (Estatic2.alpha < 0.5))
				Estatic2.alpha += 0.02;
				
			if ((curStep >= 1312))
				windowSpawn();
*/		}
}