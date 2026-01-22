var tecBarWhite;
var tecBar;
var tecBarBlack;
var tecTxt;
var ting:FlxTimer = new FlxTimer();


var greyScale = new CustomShader("fanmade_stuff/alyxs_stuff/GreyscaleEffect");
var chromAbEffect = new CustomShader("fanmade_stuff/alyxs_stuff/ChromAbEffect");
var blur = new CustomShader("fanmade_stuff/alyxs_stuff/BlurEffect");

var cutoffPP:FlxSprite = new FlxSprite(-250, -250);
cutoffPP.frames = Paths.getSparrowAtlas('characters/fanmade_stuff/alyxs_stuff/cutoffPP');
cutoffPP.scrollFactor.set(0, 0);
cutoffPP.animation.addByPrefix('cutoffPP', 'cutoffPP', 18, true);
cutoffPP.updateHitbox();
cutoffPP.x = -400;
cutoffPP.y = -400;
function postCreate() {
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

	//Other_shit.
	camHUD.addShader(greyScale);
	FlxG.camera.addShader(greyScale);
	FlxG.camera.addShader(chromAbEffect);
	camHUD.addShader(chromAbEffect);
	FlxG.camera.addShader(blur);
	camHUD.addShader(blur);
	cutoffPP.camera = camOther2;
	add(cutoffPP).alpha=0;
}
function beatHit(curBeat:Int) {
	if (curBeat == 35) { 
	FlxTween.tween(camHUD, {alpha: 0.01}, 0.1, {ease: FlxEase.quadOut});
	cutoffPP.alpha=1;
	cutoffPP.animation.play('cutoffPP');
	}
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

		FlxTween.tween(camHUD, {alpha: 1}, 0.1, {ease: FlxEase.quadOut});
		remove(cutoffPP);
		FlxTween.num(0, 0.005, 0.75, {ease: FlxEase.quadIn}, function(strength:FlxTween){
		chromAbEffect.data.strength.value = [strength];});
	}
	//If theres a lag spike this will fix things.
	if (curBeat > 40 && curBeat <= 43)FlxTween.tween(camHUD, {alpha: 1}, 0.1, {ease: FlxEase.quadOut});
	if (curBeat == 218){
	FlxTween.num(0, 1, 0.75, {ease: FlxEase.quadIn}, function(strength:FlxTween){
	greyScale.data.strength.value = [strength];});
	FlxTween.num(0, 2, 0.75, {ease: FlxEase.quadIn}, function(strength:FlxTween){
	blur.data.strength.value = [strength];});
	FlxTween.num(0.005, 0, 0.75, {ease: FlxEase.quadIn}, function(strength:FlxTween){
	chromAbEffect.data.strength.value = [strength];});
    }
	if (curBeat == 234) {
	FlxTween.num(1, 0, 0.75, {ease: FlxEase.quadOut}, function(strength:FlxTween){
	greyScale.data.strength.value = [strength];});
	FlxTween.num(2, 0, 0.75, {ease: FlxEase.quadOut}, function(strength:FlxTween){
	blur.data.strength.value = [strength];});
	FlxTween.num(0, 0.005, 0.75, {ease: FlxEase.quadOut}, function(strength:FlxTween){
	chromAbEffect.data.strength.value = [strength];});
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
    if (curBeat == 548){
		FlxTween.tween(tecTxt, {y:300}, 3, {ease: FlxEase.quadOut});
		tecBar.alpha=0;
		tecBarBlack.alpha=0;
		healthBar.alpha=0;
	}
	if (curBeat == 564){
		FlxTween.tween(tecTxt, {'scale.x': 0.0001,'scale.y':0.0001}, 0.5);
	}


	//Icon_shit.
	FlxTween.tween(iconP1, {'scale.x': 1,'scale.y':1}, Conductor.crochet/1100,{ease: FlxEase.quadOut});
	FlxTween.tween(iconP2, {'scale.x': 1,'scale.y':1}, Conductor.crochet/1100,{ease: FlxEase.quadOut});

	if (curBeat %2 == 0){
		iconP1.scale.set(1.9,1.5);
		iconP2.scale.set(1.9,1.5);
	}
	if (curBeat %2 == 1){
		iconP1.scale.set(1.5,1.9);
		iconP2.scale.set(1.5,1.9);
	}
}
function stepHit(curStep:Int) {
    if ((curBeat >= 40) && (curBeat < 548)){
		if (curStep % 16 == 0){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
        }
        if (curStep % 16 == 4){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 8){
			ting.start(0.05, onTimerCompleted('ting'));
            FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 11){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
        if (curStep % 16 == 14){
			ting.start(0.05, onTimerCompleted('ting'));
			FlxTween.tween(tecBarBlack, {'scale.x': 0.65,'scale.y':0.65}, 0.05);
			FlxTween.tween(tecTxt, {'scale.x': 0.7,'scale.y':0.7}, 0.05);
		}
	}
}
function onTimerCompleted(tag:String){
    switch(tag){
        case'ting':
        FlxTween.tween(tecBarBlack, {'scale.x': 0.6,'scale.y':0.6}, 0.4);
		FlxTween.tween(tecTxt, {'scale.x': 0.6,'scale.y':0.55}, 0.4);
    }
}