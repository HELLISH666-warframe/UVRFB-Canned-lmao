//I want to stab myself , this shit so ass.
/*
public var pentyVar = 0;
var owo = 0;
var owo2 = 0;
var uwu = 0.002;
var theValue = 5;
var daTingX:Bool = false;
var daTingY:Bool = false;
var daTingYSmall:Bool = false;
var yippee = 1;
function update(elapsed:Float) {
    var currentBeat2:Float = (Conductor.songPosition / 1000)*(Conductor.bpm/170);
    var currentBeat:Float = (Conductor.songPosition /100)/(Conductor.bpm/170);
    if ((curBeat >= 380) && (curBeat <= 444)){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120 + (Math.sin(currentBeat/8+0.1) * 50)}, 0.25);}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230 + (Math.sin(currentBeat/8+0.2) * 50)}, 0.25);}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340 + (Math.sin(currentBeat/8+0.3) * 50)}, 0.25);}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450 + (Math.sin(currentBeat/8+0.4) * 50)}, 0.25);}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720 + (Math.sin(currentBeat/8+0.5) * 50)}, 0.25);}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830 + (Math.sin(currentBeat/8+0.6) * 50)}, 0.25);}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940 + (Math.sin(currentBeat/8+0.7) * 50)}, 0.25);}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050 + (Math.sin(currentBeat/8+0.8) * 50)}, 0.25);}
    }
    if ((curBeat >= 412) && (curBeat <= 444)){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.1) * 5)}, 0.25);}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.2) * 5),}, 0.25);}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.3) * 5)}, 0.25);}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.4) * 5)}, 0.25);}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.5) * 5)}, 0.25);}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.6) * 5)}, 0.25);}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.7) * 5)}, 0.25);}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {angle: 0 + (Math.sin(currentBeat/7+0.8) * 5)}, 0.25);}
    }
    if (daTingX){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120 + (Math.sin(currentBeat/3+0.1) * 50)}, 0.001);}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230 + (Math.sin(currentBeat/3+0.2) * 50)}, 0.001);}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340 + (Math.sin(currentBeat/3+0.3) * 50)}, 0.001);}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450 + (Math.sin(currentBeat/3+0.4) * 50)}, 0.001);}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720 + (Math.sin(currentBeat/3+0.1) * -50)}, 0.001);}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830 + (Math.sin(currentBeat/3+0.2) * -50)}, 0.001);}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940 + (Math.sin(currentBeat/3+0.3) * -50)}, 0.001);}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050 + (Math.sin(currentBeat/3+0.4) * -50)}, 0.001);}
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
    if ((curBeat >= 140) && (curBeat < 168)){
        if ((curBeat >= 140) && (curBeat < 144)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 144) && (curBeat < 148)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 148) && (curBeat < 152)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 152) && (curBeat < 156)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 156) && (curBeat < 160)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 160) && (curBeat < 164)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
        if ((curBeat >= 164) && (curBeat < 168)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 750 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 640 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 530 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 420 + (Math.sin(currentBeat/3+0.1) * -450)}, 0.25);}
        }
    }
    if ((curBeat >= 480) && (curBeat < 548)){
        if ((curBeat >= 480) && (curBeat < 484)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 484) && (curBeat < 488)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 488) && (curBeat < 492)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 492) && (curBeat < 496)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 496) && (curBeat < 500)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 500) && (curBeat < 504)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 504) && (curBeat < 508)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 508) && (curBeat < 512)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 512) && (curBeat < 516)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 516) && (curBeat < 520)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 520) && (curBeat < 524)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 524) && (curBeat < 528)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 528) && (curBeat < 532)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 532) && (curBeat < 536)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 536) && (curBeat < 540)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:750 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * 450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:640 +  FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * 450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * 450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * 450)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+1) * -450)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+2) * -450)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+3) * -450)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5+4) * -450)}, 0.25);}
        }
        if ((curBeat >= 540) && (curBeat < 548)){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * 250)}, 0.25);}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x:420 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x:530 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x:640 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x:750 + FlxG.random.int(-40, 40) + (Math.sin(currentBeat/2.5) * -250)}, 0.25);}
        }
    }
}
function beatHit(curBeat:Int) {
    if (curBeat == 464){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 350}, 6, {ease: FlxEase.linear});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 250}, 6, {ease: FlxEase.linear});}
        }
    }    
    if ((curBeat >= 108) && (curBeat < 122)){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: FlxG.random.int(380, 460)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: FlxG.random.int(490, 570)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: FlxG.random.int(600, 680)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: FlxG.random.int(710, 790)}, 0.5, {ease: FlxEase.quadOut});}

        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
        }
    }
    if ((curBeat >= 124) && (curBeat < 140)){
        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: FlxG.random.int(380, 460)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: FlxG.random.int(490, 570)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: FlxG.random.int(600, 680)}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: FlxG.random.int(710, 790)}, 0.5, {ease: FlxEase.quadOut});}

        if (!PlayState.downscroll) {
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
        }
    }
    if ((curBeat >= 140) && (curBeat < 168)){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.5, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.25, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 610)}, 0.5, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.25, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 110)}, 0.25, {ease: FlxEase.quadOut});}
        }
    }
    if ((curBeat >= 480) && (curBeat < 548)){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(530, 670)}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: FlxG.random.int(30, 170)}, 0.5, {ease: FlxEase.quadOut});}
        }
    }
	if (curBeat == 104){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: -200}, 0.1, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: -200}, 0.2, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: -200}, 0.3, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: -200}, 0.4, {ease: FlxEase.quadIn});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: -200}, 0.1, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: -200}, 0.2, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: -200}, 0.3, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: -200}, 0.4, {ease: FlxEase.quadIn});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 800}, 0.1, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 800}, 0.2, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 800}, 0.3, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 800}, 0.4, {ease: FlxEase.quadIn});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 800}, 0.1, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 800}, 0.2, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 800}, 0.3, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 800}, 0.4, {ease: FlxEase.quadIn});}
        }
    }
    if (curBeat == 108){
        for (i in 0...cpuStrums.members.length){FlxTween.tween(cpuStrums.members[i], {angle: cpuStrums.members[i].angle+180}, 0.00000001);}
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 450}, 2, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 340}, 2, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 230}, 2, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 120}, 2, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420}, 0.5, {ease: FlxEase.bounceOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530}, 0.5, {ease: FlxEase.bounceOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640}, 0.5, {ease: FlxEase.bounceOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750}, 0.5, {ease: FlxEase.bounceOut});}
    }
    if (curBeat == 218){
        daTingX = false;
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420}, 0.6, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530}, 0.65, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640}, 0.7, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750}, 0.75, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420}, 0.6, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530}, 0.65, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640}, 0.7, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750}, 0.75, {ease: FlxEase.quadOut});}
    }
    if (curBeat == 122){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 1000}, 0.65, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 1000}, 0.75, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 1000}, 0.85, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 1000}, 0.95, {ease: FlxEase.quadIn});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.3, {ease: FlxEase.bounceOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.4, {ease: FlxEase.bounceOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.bounceOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.6, {ease: FlxEase.bounceOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: -400}, 0.65, {ease: FlxEase.quadIn});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: -400}, 0.75, {ease: FlxEase.quadIn});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: -400}, 0.85, {ease: FlxEase.quadIn});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: -400}, 0.95, {ease: FlxEase.quadIn});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.3, {ease: FlxEase.bounceOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.4, {ease: FlxEase.bounceOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.bounceOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.6, {ease: FlxEase.bounceOut});}
        }
    }
    if (curBeat == 138){
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.3, {ease: FlxEase.bounceOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.4, {ease: FlxEase.bounceOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.bounceOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.6, {ease: FlxEase.bounceOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.3, {ease: FlxEase.bounceOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.4, {ease: FlxEase.bounceOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.bounceOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.6, {ease: FlxEase.bounceOut});}
        }
    }
    if (curBeat == 168){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120}, 2, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230}, 2, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340}, 2, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450}, 2, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720}, 2, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830}, 2, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940}, 2, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050}, 2, {ease: FlxEase.quadOut});}
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 2, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 550}, 2, {ease: FlxEase.quadOut});}
        }
    }
    if (curBeat == 172){
        daTingX = true;
        daTingY = true;
    }
	if (curBeat == 218){
        daTingX = false;
    for (i in 0...cpuStrums.members.length)FlxTween.tween(cpuStrums.members[i],{alpha: 0},1);
    for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420}, 0.6, {ease: FlxEase.quadOut});}
    for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530}, 0.65, {ease: FlxEase.quadOut});}
    for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640}, 0.7, {ease: FlxEase.quadOut});}
    for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750}, 0.75, {ease: FlxEase.quadOut});}

    for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420}, 0.6, {ease: FlxEase.quadOut});}
    for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530}, 0.65, {ease: FlxEase.quadOut});}
    for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640}, 0.7, {ease: FlxEase.quadOut});}
    for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750}, 0.75, {ease: FlxEase.quadOut});}
    }
	if (curBeat == 234) {
    for (i in 0...cpuStrums.members.length)FlxTween.tween(cpuStrums.members[i],{alpha: 1},0.5);
    for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120}, 0.6, {ease: FlxEase.quadOut});}
    for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230}, 0.65, {ease: FlxEase.quadOut});}
    for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340}, 0.7, {ease: FlxEase.quadOut});}
    for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450}, 0.75, {ease: FlxEase.quadOut});}
    
    for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720}, 0.6, {ease: FlxEase.quadOut});}
    for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830}, 0.65, {ease: FlxEase.quadOut});}
    for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940}, 0.7, {ease: FlxEase.quadOut});}
    for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050}, 0.75, {ease: FlxEase.quadOut});}
	}
    if (curBeat == 236){
        daTingX = true;
    }
    if (curBeat == 300){
        daTingX = false;
        daTingY = false;
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450}, 0.5, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050}, 0.5, {ease: FlxEase.quadOut});}

        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
        }
    }
    if (curBeat == 316){
        daTingYSmall = true;
    }
    if (curBeat == 444){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {angle: 0}, 0.5, {ease: FlxEase.quadOut});}
    }
     if (curBeat == 448){
        daTingYSmall = false;
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 0.5, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 550}, 0.5, {ease: FlxEase.quadOut});}
        }
    }
    if (curBeat == 548){
        for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 420}, 3, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 530}, 3, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 640}, 3, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 750}, 3, {ease: FlxEase.quadOut});}

        for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 420}, 3, {ease: FlxEase.quadOut});}
        for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 530}, 3, {ease: FlxEase.quadOut});}
        for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 640}, 3, {ease: FlxEase.quadOut});}
        for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 750}, 3, {ease: FlxEase.quadOut});}
        if (!PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 50}, 3, {ease: FlxEase.quadOut});}
        }
        if (PlayState.downscroll){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}

            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {y: 550}, 3, {ease: FlxEase.quadOut});}
        }
    }
}
function stepHit(curStep:Int) {
    if ((curBeat >= 464) && (curBeat < 480)){
        if (curStep % 16 == 0){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050}, 0.4, {ease: FlxEase.quadOut});}
            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = -20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 4){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 720}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 830}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 940}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 1050}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 120}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 230}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 340}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 450}, 0.4, {ease: FlxEase.quadOut});}
            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = 20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 8){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 120}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 230}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 340}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 450}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 720}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 830}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 940}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 1050}, 0.4, {ease: FlxEase.quadOut});}
            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = -20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut, startDelay:0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 12){
            for (i in 0...1){FlxTween.tween(cpuStrums.members[i], {x: 720}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(cpuStrums.members[i], {x: 830}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(cpuStrums.members[i], {x: 940}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(cpuStrums.members[i], {x: 1050}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 0...1){FlxTween.tween(playerStrums.members[i], {x: 120}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 1...2){FlxTween.tween(playerStrums.members[i], {x: 230}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 2...3){FlxTween.tween(playerStrums.members[i], {x: 340}, 0.4, {ease: FlxEase.quadOut});}
            for (i in 3...4){FlxTween.tween(playerStrums.members[i], {x: 450}, 0.4, {ease: FlxEase.quadOut});}
            FlxTween.cancelTweensOf(camHUD);
            camHUD.angle = 20;
            FlxTween.tween(camHUD, {angle: 0}, 0.75, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
    }
    if ((curBeat >= 40) && (curBeat < 72)){
        if (curStep % 16 == 0){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom-1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});

            camHUD.x=25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 4){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom-1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});

            camHUD.x=-25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 8){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom-1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});

            camHUD.x=25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 11){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom-1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});

            camHUD.x=-25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
        if (curStep % 16 == 14){
            FlxTween.cancelTweensOf(camHUD);
            camHUD.zoom-1.025;
            FlxTween.tween(camHUD, {zoom: 1}, 0.5, {ease: FlxEase.expoOut, startDelay: 0.000001,type: FlxEase.ONESHOT});

            camHUD.x=25;
            FlxTween.tween(camHUD, {x: 0}, 0.5, {ease: FlxEase.quadOut, startDelay: 0.000001,type: FlxEase.ONESHOT});
        }
    }
}*/