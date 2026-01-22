import funkin.backend.system.Flags;
//importScript("data/scripts/hud/fanmade/alyx");
public var pentyVar = 0;
var owo = 0;
var owo2 = 0;
var uwu = 0.002;
var theValue = 5;
var daTingX = false;
var daTingY = false;
var daTingYSmall = false;
var hudAngle = false;
var yippee = 1;

var movePaint:FlxTimer = new FlxTimer();
var end:FlxTimer = new FlxTimer();
var start:FlxTimer = new FlxTimer();

function postCreate() {
    stage.getSprite("pentycanvas").color=0x999999;
    //FlxTween.color(stage.getSprite("pentycanvas"), 0.01,0x999999,0x999999, {ease: FlxEase.linear});
    //doTweenColor('yeah', 'pentycanvas', '999999', 0.01, 'linear')
    movePaint.start(0.06,()-> {onTimerCompleted('movePaint');});
    stage.getSprite("stone1").alpha=0;
    stage.getSprite("stone2").alpha=0;
    stage.getSprite("stone3").alpha=0;
    stage.getSprite("foreskin").alpha=0;
    stage.getSprite("canvas").alpha=0;
    stage.getSprite("foreskinclean").alpha=1;
    stage.getSprite("canvasclean").alpha=1;
    stage.getSprite("dead").alpha=1;
    camHUD.alpha=0;
	for (i in playerStrums.members) i.noteAngle=0;
}

function onSongStart(){
    FlxTween.tween(camHUD, {alpha: 1}, 1.5);
    FlxTween.tween(stage.getSprite("dead"), {alpha: 0.5}, 3);
}

function onDadHit(e){
    if (curBeat >= 40){
        FlxG.camera.shake(0.00125, 0.05);
        camHUD.shake(0.000625, 0.05);
    }
    if (curBeat < 512){
        if (health > 0.1){
            health=health-uwu;
        }
    }
    if (curBeat >= 512){
        if (health > 0.175){
            health=health-uwu;
        }
    }
}

function beatHit(curBeat:Int){
    if (curBeat == 315){
        fixed = dad.y - 50;
        trace(fixed-50);
    }
    if (curBeat == 316){
        dad.y=fixed;
    }
    if (curBeat == 447){
        fixed=dad.y+50;
    }
    if (curBeat == 448){
        dad.y=fixed;
    }
    if (curBeat == 464){
        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});
        }
    }    
    if (curBeat >= 108 && curBeat < 122){
        FlxTween.tween(cpuStrums.members[0], {x: FlxG.random.int(380, 460)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: FlxG.random.int(490, 570)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: FlxG.random.int(600, 680)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: FlxG.random.int(710, 790)}, 0.5, {ease: FlxEase.quadOut});

        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 124 && curBeat < 140){
        FlxTween.tween(playerStrums.members[0], {x: FlxG.random.int(380, 460)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: FlxG.random.int(490, 570)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: FlxG.random.int(600, 680)}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: FlxG.random.int(710, 790)}, 0.5, {ease: FlxEase.quadOut});

        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 140 && curBeat < 168){
        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.25, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.25, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 480 && curBeat < 548){
        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});
        }
        if (!Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for (i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 316 && curBeat < 380){
        if (curBeat %2 == 0){
            //Cancel_the_tweens_to_have_it_work!!
            FlxTween.cancelTweensOf(topBar);
            FlxTween.cancelTweensOf(bottomBar);
            FlxTween.cancelTweensOf(camHUD);
            FlxTween.tween(topBar, {y: -200}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(bottomBar, {y: 600}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.quadOut});
            topBar.y=-180;
            bottomBar.y=580;
            camHUD.zoom=0.95;
        }
    }
    if (curBeat == 32){
        FlxTween.tween(stage.getSprite("dead"), {alpha: 1}, 0.5, {ease: FlxEase.quadInOut});
        FlxTween.color(stage.getSprite("pentycanvas"), 3, 0xFFFFFFFF,0x999999, {ease: FlxEase.linear});
        FlxTween.tween(stage.getSprite("pentycanvas"), {'scale.x': 3,'scale.y': 3}, 1.5, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("pentycanvas"), {x: 280,y: 170}, 1.5, {ease: FlxEase.quadInOut});
        //FlxTween.tween(simge2, {alpha: 0}, 1.5, {ease: FlxEase.quadInOut});
    }
    if (curBeat == 36){
        pentyVar = 0.5;
        uwu = 0.005;
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0.4}, 1, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 1.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("grade"), {alpha: 0}, 1.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("pentycanvas"), {y: -5000}, 1.25, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("pentycanvas"), {angle: -720}, 1.25, {ease: FlxEase.quadIn});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=4;
        stage.getSprite("penty").angle=0;
        defaultCamZoom=0.4;
    }
    if (curBeat == 37){
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.6;
    }
    if (curBeat == 38){
        FlxTween.tween(stage.getSprite("penty"), {y: -500}, 0.75, {ease: FlxEase.quadOut});
    }
    if (curBeat == 40){
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0}, 1, {ease: FlxEase.quadOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=1;
        /*FlxTween.tween(simge2, {alpha: 1}, 0.5, {ease: FlxEase.quadInOut});
        simge2.alpha=0;*/
        stage.getSprite("alive").alpha=1;
        stage.getSprite("dead").alpha=0;
    }
    if (curBeat == 72){
        FlxTween.tween(FlxG.camera, {zoom: 0.5}, 1.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.5;
    }
    if (curBeat == 103){
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 0.5, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.9;
    }
    if (curBeat == 104){
        pentyVar = 2;
        FlxG.camera.shake(0.005, 1.25);
        camHUD.shake(0.0025, 1.25);
        if (!Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: -200}, 0.1, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[1], {y: -200}, 0.2, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[2], {y: -200}, 0.3, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[3], {y: -200}, 0.4, {ease: FlxEase.quadIn});

            FlxTween.tween(playerStrums.members[0], {y: -200}, 0.1, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[1], {y: -200}, 0.2, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[2], {y: -200}, 0.3, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[3], {y: -200}, 0.4, {ease: FlxEase.quadIn});
        }
        if (Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 800}, 0.1, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[1], {y: 800}, 0.2, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[2], {y: 800}, 0.3, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[3], {y: 800}, 0.4, {ease: FlxEase.quadIn});

            FlxTween.tween(playerStrums.members[0], {y: 800}, 0.1, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[1], {y: 800}, 0.2, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[2], {y: 800}, 0.3, {ease: FlxEase.quadIn});
            FlxTween.tween(playerStrums.members[3], {y: 800}, 0.4, {ease: FlxEase.quadIn});
        }
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0}, 1.25);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 0}, 1.25);

        FlxTween.tween(FlxG.camera, {zoom: 0.3}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {angle: 180}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(boyfriend, {y: -11800}, 1.5, {ease: FlxEase.quadIn});
        FlxTween.tween(dad, {y: -12000}, 1.5, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("penty"), {y: -2750}, 1.25, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("canvasclean"), {y: -7750}, 1.25, {ease: FlxEase.quadIn});
        FlxTween.tween(boyfriend, {angle: 360}, 1, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 1}, 1, {ease: FlxEase.quadIn});
        for(score in [scoreTxt,missesTxt,accuracyTxt]) FlxTween.tween(score, {alpha: 0}, 1.25, {ease: FlxEase.quadIn});
        if(FlxG.save.data.annoyingshit)start.start(0.01,()-> {onTimerCompleted('start');});
    }
    if (curBeat == 108){
        uwu = 0.035;
        hudAngle = true;
        FlxG.sound.play(Paths.sound('fanmade/alyxs_stuff/boom'), 0.4);
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0.75}, 0.75);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 1}, 0.75);
        FlxTween.tween(playerStrums.members[0], {x: 420}, 0.5, {ease: FlxEase.bounceOut});
        FlxTween.tween(playerStrums.members[1], {x: 530}, 0.5, {ease: FlxEase.bounceOut});
        FlxTween.tween(playerStrums.members[2], {x: 640}, 0.5, {ease: FlxEase.bounceOut});
        FlxTween.tween(playerStrums.members[3], {x: 750}, 0.5, {ease: FlxEase.bounceOut});

        FlxTween.tween(FlxG.camera, {zoom: 1}, 5, {ease: FlxEase.linear});
        FlxTween.tween(FlxG.camera, {angle: 25}, 5, {ease: FlxEase.linear});
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 0}, 0.75, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("tree3"), {y: -6000}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree4"), {y: -5800}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree3"), {x: -100}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree4"), {x: 800}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building1"), {y: -4800}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building2"), {y: -4600}, 3.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building3"), {x: -5000}, 3.5, {ease: FlxEase.quadOut});
        /*doTweenY('txtdrop', 'timeTxt', 1500, 3);
        doTweenY('bgdrop', 'timeBarBG', 1500, 3);
        doTweenY('tpdrop', 'timeBar', 1500, 3);
        doTweenAngle('txttilt', 'timeTxt', 360, 4);
        doTweenAngle('bgtilt', 'timeBarBG', -720, 4);
        doTweenAngle('tptilt', 'timeBar', -720, 4);*/
        FlxTween.tween(camHUD, {alpha: 1}, 0.75, {ease: FlxEase.quadOut});
        stage.getSprite("tree1").scale.set(0.4,0.4);
        stage.getSprite("tree2").scale.set(0.4,0.4);
        stage.getSprite("tree3").scale.set(0.4,0.4);
        stage.getSprite("tree4").scale.set(0.4,0.4);
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=2;
        defaultCamZoom=1.2;
        stage.getSprite("kamehameha").alpha=1;
        FlxG.camera.angle=0;
        if(FlxG.save.data.annoyingshit)googoo.alpha=0.7;
        stage.getSprite("stone1").alpha=0;
        stage.getSprite("stone2").alpha=0;
        stage.getSprite("stone3").alpha=0;
        stage.getSprite("canvasclean").alpha=0;
        stage.getSprite("foreskinclean").alpha=0;
        stage.getSprite("canvas").alpha=1;
        stage.getSprite("foreskin").alpha=1;
        stage.getSprite("pentycanvas").alpha=1;
        trace(dad.y);
        dad.y=-12000;
        trace(dad.y);
        for (i in cpuStrums.members) i.noteAngle=180;
    }
    if (curBeat == 122){
        if (!Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 1000}, 0.65, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[1], {y: 1000}, 0.75, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[2], {y: 1000}, 0.85, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[3], {y: 1000}, 0.95, {ease: FlxEase.quadIn});

            FlxTween.tween(playerStrums.members[0], {y: 50}, 0.3, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[1], {y: 50}, 0.4, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[2], {y: 50}, 0.5, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[3], {y: 50}, 0.6, {ease: FlxEase.bounceOut});
        }
        if (Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: -400}, 0.65, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[1], {y: -400}, 0.75, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[2], {y: -400}, 0.85, {ease: FlxEase.quadIn});
            FlxTween.tween(cpuStrums.members[3], {y: -400}, 0.95, {ease: FlxEase.quadIn});

            FlxTween.tween(playerStrums.members[0], {y: 550}, 0.3, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[1], {y: 550}, 0.4, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[2], {y: 550}, 0.5, {ease: FlxEase.bounceOut});
            FlxTween.tween(playerStrums.members[3], {y: 550}, 0.6, {ease: FlxEase.bounceOut});
        }
    }
    if (curBeat == 123){
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 124){
        FlxTween.tween(FlxG.camera, {zoom: 1.2}, 5, {ease: FlxEase.linear});
        FlxTween.tween(FlxG.camera, {angle: -25}, 5, {ease: FlxEase.linear});
        defaultCamZoom=1.2;
    }
    if (curBeat == 138){
        if (Options.downscroll == false){
            FlxTween.tween(cpuStrums.members[0], {y: 550}, 0.3, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[1], {y: 550}, 0.4, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[2], {y: 550}, 0.5, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[3], {y: 550}, 0.6, {ease: FlxEase.bounceOut});
        }
        if (Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 50}, 0.3, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[1], {y: 50}, 0.4, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[2], {y: 50}, 0.5, {ease: FlxEase.bounceOut});
            FlxTween.tween(cpuStrums.members[3], {y: 50}, 0.6, {ease: FlxEase.bounceOut});
        }
    }
    if (curBeat == 139){
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 140){
        FlxTween.tween(FlxG.camera, {zoom: 1}, 5, {ease: FlxEase.linear});
        FlxTween.tween(FlxG.camera, {angle: 25}, 5, {ease: FlxEase.linear});
        defaultCamZoom=1.2;
    }
    if (curBeat == 155){
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 156){
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 5.5, {ease: FlxEase.linear});
        FlxTween.tween(FlxG.camera, {angle: -180}, 5.5, {ease: FlxEase.linear});
        FlxTween.tween(boyfriend, {y: -6725}, 5.5, {ease: FlxEase.quadIn});
        FlxTween.tween(dad, {y: -6000}, 5.5, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("penty"), {y: -1750}, 5.5, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("tree1"), {y: -4700}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree2"), {y: -4200}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree3"), {y: -4500}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("tree4"), {y: -4300}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building1"), {y: -3000}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building2"), {y: -2700}, 7.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building3"), {x: -4000}, 7.5, {ease: FlxEase.quadOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.6;
        defaultCamZoom=0.9;
    }
    if (curBeat == 168){
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 1}, 1.75);
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 2, {ease: FlxEase.quadOut});

        FlxTween.tween(playerStrums.members[0], {x: 720}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 2, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 2, {ease: FlxEase.quadOut});
        if (!Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});
        }
        FlxTween.tween(stage.getSprite("alive"), {alpha: 1}, 1, {ease: FlxEase.quadIn});
    }
    if (curBeat == 172){
        daTingX = true;
        daTingY = true;
        hudAngle = false;
        yippee = 0.2;
        uwu = 0.01;
        FlxTween.tween(camHUD, {angle: 0}, 1, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 1.5, {ease: FlxEase.quadOut});
        defaultCamZoom=0.6;
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0}, 1.25, {ease: FlxEase.quadOut});
        for(score in [scoreTxt,missesTxt,accuracyTxt]) FlxTween.tween(score, {alpha: 1}, 1.25, {ease: FlxEase.quadOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=1;
        boyfriend.angle=0;
        stage.getSprite("island").alpha=1;
        stage.getSprite("island2").alpha=1;
        FlxG.camera.angle=0;
        if(FlxG.save.data.annoyingshit)googoo.alpha=0.4;
        stage.getSprite("alivefake").alpha=1;
        FlxG.camera.x=0;
        dad.angle=0;
        dad.y=-6000;
        for (i in cpuStrums.members) i.noteAngle=0;
    }
    if (curBeat == 176){
        hudAngle = true;
    }
    if (curBeat == 218){
        daTingX = false;
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0}, 1);
        FlxTween.tween(cpuStrums.members[0], {x: 420}, 0.6, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 530}, 0.65, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 640}, 0.7, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 750}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.tween(playerStrums.members[0], {x: 420}, 0.6, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 530}, 0.65, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 640}, 0.7, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 750}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 1.5, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.9;
        FlxTween.tween(stage.getSprite("grade"), {alpha: 1}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("dead"), {alpha: 0.25}, 1.25, {ease: FlxEase.quadInOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.6;
    }
    if (curBeat == 234){
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 1}, 0.5);
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.6, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.65, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.7, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.6, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.65, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.7, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.6;
        FlxTween.tween(stage.getSprite("grade"), {alpha: 0}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("dead"), {alpha: 0}, 1.25, {ease: FlxEase.quadInOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=1;
    }
    if (curBeat == 236){
        daTingX = true;
    }
    if (curBeat == 251){
        FlxTween.tween(FlxG.camera, {zoom: 0.7}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.7;
    }
    if (curBeat == 267){
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 283){
        FlxTween.tween(FlxG.camera, {zoom: 0.7}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.7;
    }
    if (curBeat == 300){
        daTingX = false;
        daTingY = false;
        hudAngle = false;
        yippee = 1;
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0}, 0.25);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 0}, 0.5);
        FlxTween.tween(camHUD, {angle: 0,x: 0,y: 0}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.5, {ease: FlxEase.quadOut});

        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.5, {ease: FlxEase.quadOut});
        if (!Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
        }
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("grade"), {alpha: 1}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("dead"), {alpha: 0.75}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: -10}, 0.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 2.5, {ease: FlxEase.quadOut});
        defaultCamZoom=0.4;
        stage.getSprite("alivefake").alpha=1;
    }
    if (curBeat == 308){
        uwu = 0.005;
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 1}, 2.75, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("dead"), {alpha: 0.25}, 0.75, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {angle: 15}, 2.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {zoom: 1}, 2.75, {ease: FlxEase.quadIn});
        defaultCamZoom=1;
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.6;
    }
    if (curBeat == 316){
        daTingYSmall = true;
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 1}, 0.75);
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 0}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 0.75, {ease: FlxEase.quadOut});
        defaultCamZoom=0.9;
        stage.getSprite("hind").alpha=1;
        stage.getSprite("noskin").alpha=1;
        stage.getSprite("canvas").alpha=0;
    }
    if (curBeat == 343){
        FlxTween.tween(FlxG.camera, {angle: 0}, 1.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {zoom: 1}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=1;
    }
    if (curBeat == 346){
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0}, 0.75);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 1}, 0.75);
    }
    if (curBeat == 347){
        FlxTween.tween(FlxG.camera, {angle: -15}, 2.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.9;
    }
    if (curBeat == 376){
        FlxTween.tween(FlxG.camera, {angle: 0}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {zoom: 1}, 1.25, {ease: FlxEase.quadInOut});
        defaultCamZoom=1;
    }
    if (curBeat == 379){
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 1}, 0.75);
    }
    if (curBeat == 380){
        FlxG.camera.shake(0.005, 0.75);
        camHUD.shake(0.0025, 0.75);
        FlxTween.tween(FlxG.camera, {zoom: 0.8}, 1.75, {ease: FlxEase.quadOut});
        defaultCamZoom=0.8;
        FlxTween.tween(stage.getSprite("hind"), {alpha: 0.5}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("noskin"), {alpha: 0.5}, 0.5, {ease: FlxEase.quadOut});
    }
    if (curBeat == 381){
        FlxTween.tween(stage.getSprite("hind"), {alpha: 1}, 0.5, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("noskin"), {alpha: 1}, 0.5, {ease: FlxEase.quadIn});
    }
    if (curBeat == 410){
        FlxTween.tween(FlxG.camera, {zoom: 0.7}, 1.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.7;
    }
    if (curBeat == 412){
        FlxTween.tween(dad, {alpha: 0.5}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("hind"), {alpha: 0.75}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("noskin"), {alpha: 0.75}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("canvas"), {alpha: 0.25}, 0.5, {ease: FlxEase.circIn});
    }
    if (curBeat == 426){
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 1.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.9;
    }
    if (curBeat == 444){
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50,angle: 0}, 0.5, {ease: FlxEase.quadOut});
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50,angle: 0}, 0.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("hind"), {alpha: 0}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("noskin"), {alpha: 0}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("canvas"), {alpha: 1}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(stage.getSprite("deadfake"), {alpha: 1}, 0.5, {ease: FlxEase.circIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 1.25, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.4;
    }
    if (curBeat == 448){
        uwu = 0.035;
        daTingYSmall = false;
        FlxG.camera.shake(0.05, 0.25);
        camHUD.shake(0.025, 0.25);
        if (!Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
        }
        FlxTween.tween(FlxG.camera, {angle: 35}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("grade"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("dead"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.5, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.6;
        stage.getSprite("alive").alpha=1;
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=4;
        stage.getSprite("hind").alpha=0;
        stage.getSprite("noskin").alpha=0;
        topBar.alpha=0;
        bottomBar.alpha=0;
        stage.getSprite("deadfake").alpha=0;
        dad.alpha=1;
    }
    if (curBeat == 454){
        FlxTween.tween(FlxG.camera, {zoom: 0.7}, 0.15, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.7;
    }
    if (curBeat == 456){
        FlxTween.tween(FlxG.camera, {angle: 35}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.8}, 0.25, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.8;
    }
    if (curBeat == 458){
        FlxTween.tween(FlxG.camera, {angle: -35}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 0.25, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.9;
    }
    if (curBeat == 460){
        FlxTween.tween(FlxG.camera, {angle: -35}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 1}, 0.25, {ease: FlxEase.bounceOut});
        defaultCamZoom=1;
    }
    if (curBeat == 462){
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.5, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 464){
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 5, {ease: FlxEase.linear});
        defaultCamZoom=0.9;
    }
    if (curBeat == 476){
        for(score in [scoreTxt,missesTxt,accuracyTxt]) FlxTween.tween(score, {alpha: 0}, 1.25, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("building1"), {y: -4800}, 1.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building2"), {y: -4600}, 1.5, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("building3"), {x: -5000}, 1.5, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(FlxG.camera, {angle: 180}, 1.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(boyfriend, {y: -11800}, 1.5, {ease: FlxEase.quadIn});
        FlxTween.tween(dad, {y: -12000}, 1.5, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("penty"), {x: -3750}, 1.25, {ease: FlxEase.quadIn});
        FlxTween.tween(boyfriend, {angle: 360}, 1, {ease: FlxEase.quadIn});
        FlxTween.tween(stage.getSprite("alive"), {alpha: 1}, 1, {ease: FlxEase.quadIn});
        defaultCamZoom=0.4;
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.3;
    }
    if (curBeat == 480){
        uwu = 0.06;
        hudAngle = true;
        FlxG.sound.play(Paths.sound('fanmade/alyxs_stuff/boom'), 0.4);
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0.5}, 0.75);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 1}, 0.75);
        FlxTween.tween(FlxG.camera, {zoom: 1.2,angle: 35}, 10, {ease: FlxEase.linear});
        FlxTween.tween(stage.getSprite("alivefake"), {alpha: 0}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=4;
        defaultCamZoom=1.5;
        FlxG.camera.angle=0;
        stage.getSprite("penty").scale.set(3.5,3.5);
        if(FlxG.save.data.annoyingshit)googoo.alpha=0.7;
        stage.getSprite("penty").screenCenter(FlxAxes.X);
        stage.getSprite("island").alpha=0;
        stage.getSprite("island2").alpha=0;
        stage.getSprite("alivefake").alpha=1;
        dad.angle=0;
        dad.y=-12000;
        for (i in cpuStrums.members) i.noteAngle=180;
    }
    if (curBeat == 511){
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.4;
    }
    if (curBeat == 512){
        uwu = 0.15;
        FlxTween.tween(FlxG.camera, {zoom: 1.5}, 11, {ease: FlxEase.linear});
        FlxTween.tween(FlxG.camera, {angle: -35}, 11, {ease: FlxEase.linear});
        defaultCamZoom=1.5;
    }
    if (curBeat == 543){
        FlxTween.tween(FlxG.camera, {zoom: 0.5}, 0.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {angle: 0}, 0.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.5;
    }
    if (curBeat == 544){
        FlxTween.tween(boyfriend, {y: 450}, 2.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(dad, {y: 300}, 2.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("penty"), {y: -2500}, 2.75, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("kamehameha"), {alpha: 0}, 1.25);
        FlxTween.tween(stage.getSprite("alive"), {alpha: 1}, 1.25, {ease: FlxEase.quadOut});
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 1.25, {ease: FlxEase.quadOut});
        defaultCamZoom=0.9;
        for (i in cpuStrums.members) i.noteAngle=0;
    }
    if (curBeat == 548){
        uwu = 0.01;
        pentyVar = 0.05;
        hudAngle = false;
        FlxTween.tween(camHUD, {angle: 0}, 1, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[0], {x: 420}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 530}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 640}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 750}, 3, {ease: FlxEase.quadOut});

        FlxTween.tween(playerStrums.members[0], {x: 420}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 530}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 640}, 3, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 750}, 3, {ease: FlxEase.quadOut});
        if (!Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});
        }
        if (Options.downscroll){
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});
        }
        for(score in [scoreTxt,missesTxt,accuracyTxt]) FlxTween.tween(score, {alpha: 1}, 1.25, {ease: FlxEase.quadOut});
        for(score in [scoreTxt,missesTxt,accuracyTxt]) FlxTween.tween(score, {alpha: 0}, 1.25, {ease: FlxEase.quadIn});
        for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {alpha: 0}, 2.25);
        for(i in 0...4)FlxTween.tween(playerStrums.members[i], {alpha: 0}, 2.25);
        FlxTween.tween(FlxG.camera, {zoom: 0.4}, 2.25, {ease: FlxEase.quadInOut});
        FlxTween.tween(stage.getSprite("alive"), {alpha: 0}, 0.75, {ease: FlxEase.quadOut});
        defaultCamZoom=0.4;
        boyfriend.angle=0;
        //Flags.DEFAULT_CAMERA_FOLLOW_SPEED=0.6;
        if(FlxG.save.data.annoyingshit)googoo.alpha=0;
        stage.getSprite("stone1").alpha=0;
        stage.getSprite("stone2").alpha=0;
        stage.getSprite("stone3").alpha=0;
        stage.getSprite("canvas").angle=0;
        dad.y=300;
    }
    if (curBeat == 556){
        FlxTween.tween(FlxG.camera, {zoom: 0.6}, 0.75, {ease: FlxEase.quadInOut});
        defaultCamZoom=0.6;
    }
    if (curBeat == 564){
        FlxTween.tween(FlxG.camera, {zoom: 0.9}, 1, {ease: FlxEase.quadIn});
        defaultCamZoom=0.9;
        FlxTween.tween(stage.getSprite("dead"), {alpha: 1}, 1, {ease: FlxEase.quadIn});
    }
}

function onTimerCompleted(tag:String){
    switch(tag){
        case'start':
        FlxTween.tween(deadly1, {alpha: owo2}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly2, {alpha: owo}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly1, {'scale.x': 1.25}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly2, {'scale.y': 0.75}, 0.5, {ease: FlxEase.circInOut});
        movePaint.start(0.5,()-> {onTimerCompleted('end');});
        case'end':
        FlxTween.tween(deadly1, {alpha: owo}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly2, {alpha: owo2}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly1, {'scale.x': 0.75}, 0.5, {ease: FlxEase.circInOut});
        FlxTween.tween(deadly2, {'scale.y': 1.25}, 0.5, {ease: FlxEase.circInOut});
        movePaint.start(0.5,()-> {onTimerCompleted('start');});
        case'movePaint':
        movePaint.start(0.06,()-> {onTimerCompleted('movePaint');});
        stage.getSprite("kamehameha").y=stage.getSprite("kamehameha").y+250;
    }
}

function postUpdate(elapsed:Float){
	doIconBop=false;
    var currentBeat:Float = (Conductor.songPosition / 100)/(Conductor.bpm/170);
    var currentBeat2:Float = (Conductor.songPosition / 1000)*(Conductor.bpm/170);

    stage.getSprite("canvas").y=boyfriend.y-550;

    if (curBeat >= 380 && curBeat <= 444){
        FlxTween.tween(cpuStrums.members[0], {x: 120 + (Math.sin(currentBeat/8+0.1) * 50)}, 0.25);
        FlxTween.tween(cpuStrums.members[1], {x: 230 + (Math.sin(currentBeat/8+0.2) * 50)}, 0.25);
        FlxTween.tween(cpuStrums.members[2], {x: 340 + (Math.sin(currentBeat/8+0.3) * 50)}, 0.25);
        FlxTween.tween(cpuStrums.members[3], {x: 450 + (Math.sin(currentBeat/8+0.4) * 50)}, 0.25);
        FlxTween.tween(playerStrums.members[0], {x: 720 + (Math.sin(currentBeat/8+0.5) * 50)}, 0.25);
        FlxTween.tween(playerStrums.members[1], {x: 830 + (Math.sin(currentBeat/8+0.6) * 50)}, 0.25);
        FlxTween.tween(playerStrums.members[2], {x: 940 + (Math.sin(currentBeat/8+0.7) * 50)}, 0.25);
        FlxTween.tween(playerStrums.members[3], {x: 1050 + (Math.sin(currentBeat/8+0.8) * 50)}, 0.25);
    }
    if (curBeat >= 412 && curBeat <= 444){
        FlxTween.tween(cpuStrums.members[0], {angle: 0 + (Math.sin(currentBeat/7+0.1) * 5)}, 0.25);
        FlxTween.tween(cpuStrums.members[1], {angle: 0 + (Math.sin(currentBeat/7+0.2) * 5)}, 0.25);
        FlxTween.tween(cpuStrums.members[2], {angle: 0 + (Math.sin(currentBeat/7+0.3) * 5)}, 0.25);
        FlxTween.tween(cpuStrums.members[3], {angle: 0 + (Math.sin(currentBeat/7+0.4) * 5)}, 0.25);
        FlxTween.tween(playerStrums.members[0], {angle: 0 + (Math.sin(currentBeat/7+0.5) * 5)}, 0.25);
        FlxTween.tween(playerStrums.members[1], {angle: 0 + (Math.sin(currentBeat/7+0.6) * 5)}, 0.25);
        FlxTween.tween(playerStrums.members[2], {angle: 0 + (Math.sin(currentBeat/7+0.7) * 5)}, 0.25);
        FlxTween.tween(playerStrums.members[3], {angle: 0 + (Math.sin(currentBeat/7+0.8) * 5)}, 0.25);
    }
    if (curBeat >= 140 && curBeat < 168){
        if (curBeat >= 140 && curBeat < 144){
            FlxTween.tween(cpuStrums.members[0], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 144 && curBeat < 148){
            FlxTween.tween(cpuStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 148 && curBeat < 152){
            FlxTween.tween(cpuStrums.members[0], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 152 && curBeat < 156){
            FlxTween.tween(cpuStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 156 && curBeat < 160){
            FlxTween.tween(cpuStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 160 && curBeat < 164){
            FlxTween.tween(cpuStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
        if (curBeat >= 164 && curBeat < 168){
            FlxTween.tween(cpuStrums.members[0], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);
        }
    }
    if (curBeat >= 480 && curBeat < 548){
        if (curBeat >= 480 && curBeat < 484){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 484 && curBeat < 488){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 488 && curBeat < 492){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 492 && curBeat < 496){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 496 && curBeat < 500){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 500 && curBeat < 504){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 504 && curBeat < 508){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 508 && curBeat < 512){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 512 && curBeat < 516){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 516 && curBeat < 520){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 520 && curBeat < 524){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 524 && curBeat < 528){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 528 && curBeat < 532){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 532 && curBeat < 536){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 536 && curBeat < 540){
            FlxTween.tween(cpuStrums.members[0], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);
        }
        if (curBeat >= 540 && curBeat < 548){
            FlxTween.tween(cpuStrums.members[0], {x:420 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);
            FlxTween.tween(cpuStrums.members[1], {x:530 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);
            FlxTween.tween(cpuStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);
            FlxTween.tween(cpuStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);
            FlxTween.tween(playerStrums.members[0], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);
            FlxTween.tween(playerStrums.members[1], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);
            FlxTween.tween(playerStrums.members[2], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);
            FlxTween.tween(playerStrums.members[3], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);
        }
    }
    if (curBeat >= 176 && curBeat < 300){
        camHUD.x=0 - -40 *  Math.cos((currentBeat2*0.33)*Math.PI);
        camHUD.y=0 - -20 *  Math.cos((currentBeat2*0.42)*Math.PI);
    }
    if (curBeat < 548){
        stage.getSprite("canvas").angle=0 - 18 * Math.cos((currentBeat2*0.36)*Math.PI);
    }
    if (hudAngle){
        camHUD.angle=0 - -15*yippee * Math.cos((currentBeat2*0.33)*Math.PI);
    }
    if (daTingX){
        FlxTween.tween(cpuStrums.members[0], {x: 120 + (Math.sin(currentBeat/3+0.1) * 50)}, 0.001);
        FlxTween.tween(cpuStrums.members[1], {x: 230 + (Math.sin(currentBeat/3+0.2) * 50)}, 0.001);
        FlxTween.tween(cpuStrums.members[2], {x: 340 + (Math.sin(currentBeat/3+0.3) * 50)}, 0.001);
        FlxTween.tween(cpuStrums.members[3], {x: 450 + (Math.sin(currentBeat/3+0.4) * 50)}, 0.001);
        FlxTween.tween(playerStrums.members[0], {x: 720 + (Math.sin(currentBeat/3+0.1) * -50)}, 0.001);
        FlxTween.tween(playerStrums.members[1], {x: 830 + (Math.sin(currentBeat/3+0.2) * -50)}, 0.001);
        FlxTween.tween(playerStrums.members[2], {x: 940 + (Math.sin(currentBeat/3+0.3) * -50)}, 0.001);
        FlxTween.tween(playerStrums.members[3], {x: 1050 + (Math.sin(currentBeat/3+0.4) * -50)}, 0.001);
    }
    if (daTingY){
        if (!Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 50 + (Math.cos(currentBeat/2+0.2) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[1], {y: 50 + (Math.cos(currentBeat/2+0.4) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[2], {y: 50 + (Math.cos(currentBeat/2+0.6) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[3], {y: 50 + (Math.cos(currentBeat/2+0.8) * 25)}, 0.001);
            FlxTween.tween(playerStrums.members[0], {y: 50 + (Math.cos(currentBeat/2+0.2) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[1], {y: 50 + (Math.cos(currentBeat/2+0.4) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[2], {y: 50 + (Math.cos(currentBeat/2+0.6) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[3], {y: 50 + (Math.cos(currentBeat/2+0.8) * -25)}, 0.001);
        }
        if (Options.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 550 + (Math.cos(currentBeat/2+0.2) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[1], {y: 550 + (Math.cos(currentBeat/2+0.4) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[2], {y: 550 + (Math.cos(currentBeat/2+0.6) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[3], {y: 550 + (Math.cos(currentBeat/2+0.8) * 25)}, 0.001);
            FlxTween.tween(playerStrums.members[0], {y: 550 + (Math.cos(currentBeat/2+0.2) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[1], {y: 550 + (Math.cos(currentBeat/2+0.4) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[2], {y: 550 + (Math.cos(currentBeat/2+0.6) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[3], {y: 550 + (Math.cos(currentBeat/2+0.8) * -25)}, 0.001);
        }
    }
    if (daTingYSmall){
        if (!PlayState.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 50 + (Math.cos(currentBeat/6+0.5) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[1], {y: 50 + (Math.cos(currentBeat/6+1) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[2], {y: 50 + (Math.cos(currentBeat/6+1.5) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[3], {y: 50 + (Math.cos(currentBeat/6+2) * 25)}, 0.001);

            FlxTween.tween(playerStrums.members[0], {y: 50 + (Math.cos(currentBeat/6+0.5) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[1], {y: 50 + (Math.cos(currentBeat/6+1) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[2], {y: 50 + (Math.cos(currentBeat/6+1.5) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[3], {y: 50 + (Math.cos(currentBeat/6+2) * -25)}, 0.001);
        }
        if (PlayState.downscroll){
            FlxTween.tween(cpuStrums.members[0], {y: 550 + (Math.cos(currentBeat/6+0.5) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[1], {y: 550 + (Math.cos(currentBeat/6+1) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[2], {y: 550 + (Math.cos(currentBeat/6+1.5) * 25)}, 0.001);
            FlxTween.tween(cpuStrums.members[3], {y: 550 + (Math.cos(currentBeat/6+2) * 25)}, 0.001);

            FlxTween.tween(playerStrums.members[0], {y: 550 + (Math.cos(currentBeat/6+0.5) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[1], {y: 550 + (Math.cos(currentBeat/6+1) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[2], {y: 550 + (Math.cos(currentBeat/6+1.5) * -25)}, 0.001);
            FlxTween.tween(playerStrums.members[3], {y: 550 + (Math.cos(currentBeat/6+2) * -25)}, 0.001);
        }
    }
    stage.getSprite("hind").y=boyfriend.y+400;
    stage.getSprite("noskin").y=boyfriend.y-650;

    stage.getSprite("stone1").x=boyfriend.x-800;
    stage.getSprite("stone2").x=boyfriend.x-500;
    stage.getSprite("stone3").x=boyfriend.x-100;
    stage.getSprite("stone1").y=boyfriend.y+150;
    stage.getSprite("stone2").y=boyfriend.y+350;
    stage.getSprite("stone3").y=boyfriend.y+100;

    stage.getSprite("penty").angle=stage.getSprite("penty").angle-pentyVar;

    stage.getSprite("stone1").angle=stage.getSprite("stone1").angle-0.05;
    stage.getSprite("stone2").angle=stage.getSprite("stone2").angle+0.066;
    stage.getSprite("stone3").angle=stage.getSprite("stone3").angle-0.058;

    stage.getSprite("building1").angle=0 - 20 * Math.cos((currentBeat2*0.33)*Math.PI);
	stage.getSprite("building2").angle=0 - -30 * Math.cos((currentBeat2*0.44)*Math.PI);
	stage.getSprite("building3").angle=0 - 15 * Math.cos((currentBeat2*0.55)*Math.PI);

    /*if (curBeat == 316){
        simge1.visible=false;
        simge2.visible=false;
    }
    if (curBeat == 548){
        simge1.visible=false;
        simge2.visible=false;
    }*/
    if (curBeat >= 36 && curBeat < 548){
        if (health > 1.6){
            owo = 0.1*0.9;
            owo2 = 0.2*0.9;
        }
        if (health <= 1.6 && health > 1.2){
            owo = 0.3*0.9;
            owo2 = 0.4*0.9;
        }
        if (health <= 1.2 && health > 0.8){
            owo = 0.5*0.9;
            owo2 = 0.6*0.9;
        }
        if (health <= 0.8 && health > 0.4){
            owo = 0.7*0.9;
            owo2 = 0.8*0.9;
        }
        if (health <= 0.4){
            owo = 0.9*0.9;
            owo2 = 1*0.9;
        }
    }
    if (curBeat == 40){
        if (health > 0.01){
            health=health/1.015;
        }
    }
    if (curBeat <= 464){
        stage.getSprite("island").x=dad.x+150;
        stage.getSprite("island").y=dad.y+900;
        stage.getSprite("island2").x=boyfriend.x+130;
        stage.getSprite("island2").y=boyfriend.y+750;
    }
    if (curBeat >= 108){
        stage.getSprite("tree1").angle=0 - 13 * Math.cos((currentBeat2*0.39)*Math.PI);
		stage.getSprite("tree2").angle=0 - -19 * Math.cos((currentBeat2*0.22)*Math.PI);
		stage.getSprite("tree3").angle=0 - 17 * Math.cos((currentBeat2*0.25)*Math.PI);
		stage.getSprite("tree4").angle=0 - 15 * Math.cos((currentBeat2*0.48)*Math.PI);
    }
    if (curBeat >= 108 && curBeat < 172){
        dad.angle=0 - 5 * Math.cos((currentBeat2*0.25)*Math.PI);
        boyfriend.angle=boyfriend.angle+0.5;
        FlxG.camera.shake(0.0075, 0.05);
        camHUD.shake(0.004, 0.05);
    }
    if (curBeat >= 172 && curBeat < 220){
        FlxG.camera.shake(0.0025, 0.05);
        camHUD.shake(0.001, 0.05);
    }
    if (curBeat >= 220 && curBeat < 234){
        FlxG.camera.shake(0.00125, 0.05);
        camHUD.shake(0.0005, 0.05);
    }
    if (curBeat >= 234 && curBeat < 300){
        FlxG.camera.shake(0.0025, 0.05);
        camHUD.shake(0.001, 0.05);
    }
    if (curBeat >= 300 && curBeat < 444){
        FlxG.camera.shake(0.000625, 0.05);
        camHUD.shake(0.00025, 0.05);
    }
    if (curBeat >= 448 && curBeat < 480){
        FlxG.camera.shake(0.005, 0.05);
        camHUD.shake(0.002, 0.05);
    }
    if (curBeat >= 480 && curBeat < 544){
        dad.angle=0 - 5 * Math.cos((currentBeat2*0.25)*Math.PI);
        boyfriend.angle=boyfriend.angle+0.5;
    }
    if (curBeat >= 480 && curBeat < 556){
        FlxG.camera.shake(0.0075, 0.05);
        camHUD.shake(0.004, 0.05);
    }
    if (stage.getSprite("kamehameha").y >= -2500){
        stage.getSprite("kamehameha").y=-3250;
    }
    if (curBeat >= 40 && curBeat < 41){
        if (pentyVar > 0.1){
            pentyVar = pentyVar - 0.005;
        }
    }
    if (curBeat == 104 && curBeat < 105){
        if (pentyVar < 2){
            pentyVar = pentyVar + 0.005;
        }
    }
    if (curBeat == 172 && curBeat < 173){
        if (pentyVar > 0.25){
            pentyVar = pentyVar - 0.005;
        }
    }
    if (curBeat == 218 && curBeat < 219){
        if (pentyVar > 0.1){
            pentyVar = pentyVar - 0.005;
        }
    }
    if (curBeat == 232 && curBeat < 233){
        if (pentyVar < 0.25){
            pentyVar = pentyVar + 0.005;
        }
    }
    if (curBeat == 300){
        pentyVar = 0.05;
    }
    if (curBeat == 444 && curBeat < 448){
        if (pentyVar > 0){
            pentyVar = pentyVar - 0.0025;
        }
    }
    if (curBeat == 448){
        pentyVar = 2.5;
    }
    if (curBeat == 480){
        pentyVar = 5;
    }
}

function stepHit(curStep:Int){
    if (curStep == 1792){
        FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = 20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1808){
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = -20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1818){
        FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = 20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        FlxTween.tween(FlxG.camera, {angle: -35}, 0.15, {ease: FlxEase.quadIn});
        FlxTween.tween(FlxG.camera, {zoom: 0.7}, 0.25, {ease: FlxEase.bounceOut});
        defaultCamZoom=0.7;
    }
    if (curStep == 1824){
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = -20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1832){
        FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = 20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1840){
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = -20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1848){
        FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = 20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1852){
        FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle = -20;
        FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curStep == 1856){
        FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[0], {x: 120}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[1], {x: 230}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[2], {x: 340}, 0.75, {ease: FlxEase.quadOut});
        FlxTween.tween(playerStrums.members[3], {x: 450}, 0.75, {ease: FlxEase.quadOut});

        FlxTween.cancelTweensOf(camHUD);
        camHUD.angle=20;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        camHUD.zoom = 1.15;
        FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
    }
    if (curBeat >= 40 && curBeat < 72){
        if (curStep % 16 == 0){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=10;
            playerStrums.members[i].angle=10;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }

            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 4){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-10;
            playerStrums.members[i].angle=-10;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = -25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 8){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=10;
            playerStrums.members[i].angle=10;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 11){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-10;
            playerStrums.members[i].angle=-10;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = -25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 14){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=10;
            playerStrums.members[i].angle=10;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 72 && curBeat < 103){
        if (curStep % 16 == 0){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            }
            if (!Options.downscroll){
                cpuStrums.members[0].y=25;
                cpuStrums.members[1].y=75;
                cpuStrums.members[2].y=25;
                cpuStrums.members[3].y=75;
                playerStrums.members[0].y=25;
                playerStrums.members[1].y=75;
                playerStrums.members[2].y=25;
                playerStrums.members[3].y=75;
            }
            if (Options.downscroll){
                cpuStrums.members[0].y=575;
                cpuStrums.members[1].y=525;
                cpuStrums.members[2].y=575;
                cpuStrums.members[3].y=525;
                playerStrums.members[0].y=575;
                playerStrums.members[1].y=525;
                playerStrums.members[2].y=575;
                playerStrums.members[3].y=525;
            }
            if (!Options.downscroll){
                for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
                for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            }
            if (Options.downscroll){
                for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
                for(i in 0...4)FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            }
            for(i in 0...4)cpuStrums.members[i].angle=15;
            for(i in 0...4)playerStrums.members[i].angle=15;
            for(i in 0...4)FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            for(i in 0...4)FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 35;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 4){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-15;
            playerStrums.members[i].angle=-15;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            if (!Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=75;
                cpuStrums.members[1].y=cpuStrums.members[3].y=25;
                playerStrums.members[0].y=playerStrums.members[2].y=75;
                playerStrums.members[1].y=playerStrums.members[3].y=25;
            }
            if (Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=525;
                cpuStrums.members[1].y=cpuStrums.members[3].y=575;
                playerStrums.members[0].y=playerStrums.members[2].y=525;
                playerStrums.members[1].y=playerStrums.members[3].y=575;
            }
            if (!Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            }
            if (Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            }
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = -35;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 8){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=15;
            playerStrums.members[i].angle=15;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            if (!Options.downscroll){    
                cpuStrums.members[0].y=cpuStrums.members[2].y=25;
                cpuStrums.members[1].y=cpuStrums.members[3].y=75;
                playerStrums.members[0].y=playerStrums.members[2].y=25;
                playerStrums.members[1].y=playerStrums.members[3].y=75;
            }
            if (Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=575;
                cpuStrums.members[1].y=cpuStrums.members[3].y=525;
                playerStrums.members[0].y=playerStrums.members[2].y=575;
                playerStrums.members[1].y=playerStrums.members[3].y=525;
            }
            if (!Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            }
            if (Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            }
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 35;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
        if (curStep % 16 == 11){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-15;
            playerStrums.members[i].angle=-15;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            if (!Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=75;
                cpuStrums.members[1].y=cpuStrums.members[3].y=25;
                playerStrums.members[0].y=playerStrums.members[2].y=75;
                playerStrums.members[1].y=playerStrums.members[3].y=25;
            }
            if (Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=525;
                cpuStrums.members[1].y=cpuStrums.members[3].y=575;
                playerStrums.members[0].y=playerStrums.members[2].y=525;
                playerStrums.members[1].y=playerStrums.members[3].y=575;
            }
            if (!Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            }
            if (Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            }
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = -35;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }

        if (curStep % 16 == 14){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=15;
            playerStrums.members[i].angle=15;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            if (!Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=25;
                cpuStrums.members[1].y=cpuStrums.members[3].y=75;
                playerStrums.members[0].y=playerStrums.members[2].y=25;
                playerStrums.members[1].y=playerStrums.members[3].y=75;
            }
            if (Options.downscroll){
                cpuStrums.members[0].y=cpuStrums.members[2].y=575;
                cpuStrums.members[1].y=cpuStrums.members[3].y=525;
                playerStrums.members[0].y=playerStrums.members[2].y=575;
                playerStrums.members[1].y=playerStrums.members[3].y=525;
            }
            if (!Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});
            }
            if (Options.downscroll){
                FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
                FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});
            }
            }
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            camHUD.x = 35;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut});
        }
    }
    if (curBeat >= 108 && curBeat < 168){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 2){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 6){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 10){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 12){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 13){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 15){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.1;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
    }
    if (curBeat >= 172 && curBeat < 218){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }

        if (curStep % 16 == 4){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-25;
            playerStrums.members[i].angle=-25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 11){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-25;
            playerStrums.members[i].angle=-25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
    }
    if (curBeat >= 236 && curBeat < 300){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 4){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-25;
            playerStrums.members[i].angle=-25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 11){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=-25;
            playerStrums.members[i].angle=-25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]);
            FlxTween.cancelTweensOf(playerStrums.members[i]);
            cpuStrums.members[i].angle=25;
            playerStrums.members[i].angle=25;
            FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});
            }
        }
    }
    if (curBeat >= 464 && curBeat < 480){
        if (curStep % 16 == 0){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]); FlxTween.cancelTweensOf(playerStrums.members[i]);} //Idk if i even need this.

            FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[0], {x: 720}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[1], {x: 830}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[2], {x: 940}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.4, {ease: FlxEase.quadOut});

            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = 20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 4){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]); FlxTween.cancelTweensOf(playerStrums.members[i]);} //Idk if i even need this.

            FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.4, {ease: FlxEase.quadOut});

            FlxTween.tween(playerStrums.members[0], {x: 120}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[1], {x: 230}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[2], {x: 340}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[3], {x: 450}, 0.4, {ease: FlxEase.quadOut});

            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = -20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 8){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]); FlxTween.cancelTweensOf(playerStrums.members[i]);} //Idk if i even need this.
            FlxTween.tween(cpuStrums.members[0], {x: 120}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[1], {x: 230}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[2], {x: 340}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[3], {x: 450}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[0], {x: 720}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[1], {x: 830}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[2], {x: 940}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[3], {x: 1050}, 0.4, {ease: FlxEase.quadOut});

            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = 20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 12){
            for(i in 0...4){FlxTween.cancelTweensOf(cpuStrums.members[i]); FlxTween.cancelTweensOf(playerStrums.members[i]);} //Idk if i even need this.
            FlxTween.tween(cpuStrums.members[0], {x: 720}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[1], {x: 830}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[2], {x: 940}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(cpuStrums.members[3], {x: 1050}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[0], {x: 120}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[1], {x: 230}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[2], {x: 340}, 0.4, {ease: FlxEase.quadOut});
            FlxTween.tween(playerStrums.members[3], {x: 450}, 0.4, {ease: FlxEase.quadOut});

            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = -20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut});
        }
    }
    if (curBeat >= 464 && curBeat < 476){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 4){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 12){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
    }
    if (curBeat >= 476 && curBeat < 480){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 2){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.05;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 4){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 6){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.05;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 10){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.05;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 12){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.15;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.05;
            FlxTween.tween(camHUD, {zoom: 1}, 0.75, {ease: FlxEase.expoOut});
        }
    }
    if (curBeat >= 480 && curBeat < 548){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 2){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 6){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 10){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 12){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 13){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
        if (curStep % 16 == 15){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom = 1.075;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut});
        }
    }
}