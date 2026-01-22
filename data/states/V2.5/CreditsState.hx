import flixel.addons.display.FlxBackdrop;

static var leftState:Bool = false;
static var cstate:Int = 1;
var bg:FlxBackdrop;
var arrows:FlxSprite;
var credits:FlxSprite;
var thing:FlxSprite;
	
function create(){
	bg = new FlxBackdrop(Paths.image('menus/V2.5/creditsScreen/bg'),FlxAxes.XY, 0.2, 0.2, true, true);
	bg.scale.set(0.5,0.5);
	add(bg);
	thing = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/creditsScreen/whiteThing'));
	thing.screenCenter();
	thing.scrollFactor.set();
	add(thing);
	arrows = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/creditsScreen/arrows'));
	arrows.screenCenter();
	arrows.scrollFactor.set();
	add(arrows);
	FlxTween.tween(arrows, {y: arrows.y + 50}, 1, {ease: FlxEase.quadInOut, type: FlxEase.PINGPONG});
	FlxTween.tween(thing, {y: thing.y + 20}, 1, {ease: FlxEase.quadInOut, type: FlxEase.PINGPONG});
	credits = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/creditsScreen/credits1'));
	credits.screenCenter();
	credits.scrollFactor.set();
	add(credits);
}
	
function changeSelection(change:Int = 0){
	FlxG.sound.play(Paths.sound('scrollMenu'), 0.4);
		
	cstate += change;
		
	if (cstate < 1)cstate = 5;
	if (cstate > 5)cstate = 1;
			
	remove(credits);
	credits = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/creditsScreen/credits'+cstate));
	credits.screenCenter();
	credits.scrollFactor.set();
	add(credits);
}

function update(elapsed:Float){
	bg.x += 2;
	bg.y += 1;
	if (controls.LEFT_P||controls.RIGHT_P)
		changeSelection(controls.LEFT_P ? 1 : -1);
	if (controls.BACK)
		FlxG.switchState(new ModState('V2.5/MainMenuState'));
	credits.y = thing.y;
}