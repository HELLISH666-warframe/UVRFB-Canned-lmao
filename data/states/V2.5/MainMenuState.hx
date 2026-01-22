import openfl.display.BlendMode;
import flixel.addons.display.FlxBackdrop;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxTextBorderStyle;
import Date;
import funkin.options.OptionsMenu;
import funkin.menus.GitarooPause;
import funkin.menus.credits.CreditsMain;

#if windows
import Discord.DiscordClient;
#end

var curSelected:Int = 0;

var menuItems:FlxTypedGroup<FlxSprite>;

#if !switch
var optionShit:Array<String> = ['story mode', 'freeplay', 'options', 'credits'];
#else
var optionShit:Array<String> = ['story mode', 'freeplay'];
#end

var therock:FlxSprite;
public static var firstStart:Bool = true;

public static var nightly:String = " (ron eidtion)";

public static var kadeEngineVer:String = "KE 1.5.4" + nightly;
public static var gameVer:String = "0.2.7.1";

var cloud:FlxBackdrop;
var city:FlxBackdrop;
var city2:FlxBackdrop;
public static var finishedFunnyMove:Bool = false;

public static var b:Bool = false;

function create(){
	#if windows
	// Updating Discord Rich Presence
	DiscordClient.changePresence("In the Menus", null);
	#end
		
	var bgTex = 'menus/V2.5/mainmenu/menuSunset';
	var sunTex = 'menus/V2.5/mainmenu/menuSun';
	var alphaTex = 1;
	var cityTex = 'menus/V2.5/mainmenu/menuCity';
	var cityBTex = 'menus/V2.5/mainmenu/menuCityBack';

	if ((Date.now().getHours() < 6) || (Date.now().getHours() > 20))
	{
		bgTex = 'menus/V2.5/mainmenu/menuNight';
		sunTex = 'menus/V2.5/mainmenu/menuMoon';
		alphaTex = 2;
		cityTex = 'menus/V2.5/mainmenu/menuCityNight';
		cityBTex = 'menus/V2.5/mainmenu/menuCityBackNight';
	}

	if (!FlxG.sound.music.playing)
	{
		FlxG.sound.playMusic(Paths.music('freakyMenu2.5'));
	}

	persistentUpdate = persistentDraw = true;

	var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image(bgTex));
	bg.scrollFactor.set();
	bg.updateHitbox();
	bg.screenCenter();
	add(bg);
		
	var sun:FlxSprite = new FlxSprite();
	sun.frames = Paths.getSparrowAtlas(sunTex);
	sun.scrollFactor.set();
	sun.animation.addByPrefix('sun', 'sun', 2, true);
	sun.antialiasing = true;
	sun.screenCenter();
	sun.x -= 80;
	sun.y -= 80;
	add(sun);
	sun.animation.play('sun');
		
	cloud = new FlxBackdrop(Paths.image('menus/V2.5/mainmenu/menuClouds'),FlxAxes.X, 32, 0, true, true, 0, -250);
	cloud.alpha = 0.8/alphaTex;
	cloud.scrollFactor.set(0.1);
	add(cloud);
		
	city2 = new FlxBackdrop(Paths.image(cityBTex),FlxAxes.X, 32, 0, true, true, 0, -250);
	city2.scrollFactor.set(0.125);
	add(city2);
		
	city = new FlxBackdrop(Paths.image(cityTex),FlxAxes.X, 32, 0, true, true, 0, -250);
	city.scrollFactor.set(0.2);
	add(city);
		
	var road:FlxSprite = new FlxSprite();
	road.frames = Paths.getSparrowAtlas('menus/V2.5/mainmenu/menuRoad');
	road.scrollFactor.set();
	road.animation.addByPrefix('road instance 1', 'road instance 1', 24, true);
	road.antialiasing = true;
	road.screenCenter(FlxAxes.X);
	road.x += 130;
	add(road);
	road.animation.play('road instance 1');
		
	var car:FlxSprite = new FlxSprite(597.5, 289);
	car.frames = Paths.getSparrowAtlas('menus/V2.5/mainmenu/menuCar');
	car.animation.addByPrefix('car instance 1', 'car instance 1', 24, true);
	car.antialiasing = true;
	add(car);
	car.scrollFactor.set();
	car.animation.play('car instance 1');

	therock = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/mainmenu/therock'));
	therock.x += 0;
	therock.y += 0;
	therock.alpha = 0;
	add(therock);
		
	if(FlxG.save.data.antialiasing) bg.antialiasing = true;

	var logoBl:FlxSprite = new FlxSprite(160, -380);
	logoBl.scale.set(0.5, 0.5);
	logoBl.frames = Paths.getSparrowAtlas('menus/V2.5/mainmenu/logoBumpin');
	logoBl.antialiasing = true;
	logoBl.animation.addByPrefix('bump', 'logo bumpin', 24, true);
	logoBl.updateHitbox();
	add(logoBl);
	logoBl.animation.play('bump');
		
	var lines:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menus/V2.5/mainmenu/menuLines'));
	lines.scale.set(0.5, 0.5);
	lines.scrollFactor.set();
	lines.screenCenter();
	lines.alpha = 0.5;
	lines.blend = BlendMode.OVERLAY;
	add(lines);

	menuItems = new FlxTypedGroup();
	add(menuItems);

	var tex = Paths.getSparrowAtlas('menus/V2.5/mainmenu/FNF_main_menu_assets');

	for (i in 0...optionShit.length)
	{
		var menuItem:FlxSprite = new FlxSprite(40, FlxG.height * 1.6);
		menuItem.frames = tex;
		menuItem.animation.addByPrefix('idle', optionShit[i] + " basic", 24);
		menuItem.animation.addByPrefix('selected', optionShit[i] + " white", 24);
		menuItem.animation.play('idle');
		menuItem.setGraphicSize(Std.int(menuItem.width * 0.95));
		menuItem.ID = i;
		menuItems.add(menuItem);
		menuItem.scrollFactor.set();
		if(FlxG.save.data.antialiasing)
			{
				menuItem.antialiasing = true;
			}
		if (firstStart)
			FlxTween.tween(menuItem,{y: 60 + (i * 130)},1 + (i * 0.25) ,{ease: FlxEase.expoInOut, onComplete: function(flxTween:FlxTween) 
				{ 
					finishedFunnyMove = true; 
					changeItem(0);
				}});
		else
			menuItem.y = 60 + (i * 130);
	}

	firstStart = false;

	var versionShit:FlxText = new FlxText(5, FlxG.height - 18, 0, gameVer +  " FNF - " + kadeEngineVer + "", 12);
	versionShit.scrollFactor.set();
	versionShit.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, 'left', FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
	add(versionShit);

	changeItem(0);
}

var selectedSomethin:Bool = false;

function update(elapsed:Float){	
	if (controls.SWITCHMOD) {
		import funkin.menus.ModSwitchMenu;
		openSubState(new ModSwitchMenu());
		persistentUpdate = false;
		persistentDraw = true;
	}
	cloud.x += 0.33;
	city.x += 2;
	city2.x += 1;
	if (FlxG.sound.music.volume < 0.8)
	{
		FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
	}

	if (!selectedSomethin)
	{
		if (controls.UP_P||controls.DOWN_P){
		changeItem(controls.DOWN_P ? 1 : -1);
		FlxG.sound.play(Paths.sound('scrollMenu'));
		}
		if (controls.BACK) FlxG.switchState(new TitleState());

		if (controls.ACCEPT)
		{
			selectedSomethin = true;
			FlxG.sound.play(Paths.sound('confirmMenu'));

			menuItems.forEach(function(spr:FlxSprite)
			{
				if (curSelected != spr.ID)
				{
					FlxTween.tween(spr, {alpha: 0}, 1.3, {
						ease: FlxEase.quadOut,
						onComplete: function(twn:FlxTween)
						{
							spr.kill();
						}
					});
				}
				else
				{
					if (FlxG.save.data.flashing)
					{
						FlxFlicker.flicker(spr, 1, 0.06, false, false, function(flick:FlxFlicker)
						{
							goToState();
						});
					}
					else
					{
						new FlxTimer().start(1, function(tmr:FlxTimer)
						{
							goToState();
						});
					}
				}
			});
		}
	}
}
	
function goToState()
{
	var daChoice:String = optionShit[curSelected];

	switch (daChoice)
	{
		case 'story mode':
			FlxG.switchState(new StoryMenuState());
			b = false;
		case 'freeplay':
			FlxG.switchState(new GitarooPause());
		case 'options':
			FlxG.switchState(new OptionsMenu());
		case 'b-side':
			FlxG.switchState(new BSIDEState());
			trace("b");
			b = true;
		case 'credits':
			FlxG.switchState(new CreditsMain());
	}
}

function changeItem(huh:Int = 0)
{
	if (finishedFunnyMove)
	{
		curSelected += huh;

		if (curSelected >= menuItems.length)
			curSelected = 0;
		if (curSelected < 0)
			curSelected = menuItems.length - 1;
	}
	menuItems.forEach(function(spr:FlxSprite)
	{
		spr.animation.play('idle');

		if (spr.ID == curSelected && finishedFunnyMove)
		{
			spr.animation.play('selected');
		}

		spr.updateHitbox();
	});
}