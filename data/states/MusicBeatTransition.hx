//Not getting the loading screen code , lmao.
import funkin.backend.utils.WindowUtils;
import openfl.Lib;
import lime.ui.Window;
var out = newState != null;
var mod_name = (
	["Versus Ron Legacy",
	"Versus Ron + extras",
	"Versus Ron V3 + legacy + fan-made stuff",
	"Un-named oc mod wait thats the wrong mod",
	"Versus Ron Literally Every Fan Build Ever",
	"New Super Versus Ron 1 + 2 + 3 + 4 + Fan-made Content Ultimate Deluxe Game of The Year Edition Codename Engine 2 Edition",
	"Versus Ron Legacy \"Progression Update Coming Soon\"",
	"Apollo and Bloodshed-d Fix Coming Soon",
	"Slushi Engine Port Coming Soon!",
	//Idea from discord user id:"956090205738242098" they change their name too much
	"Literally Every Codename Engine Port Ever",
	//can't put a "™" why????
	"\"Extra Side Content Coming Soon\"--earframe 2025",
	"Patch Notes Coming Soon",
	"Chris Pratt.",
	"Friday Night Funkin': Psych Engi- wait i meant Codename Engine",
	"Versus Ron X B-sides oh that didn't happen , oops.",
	"Ron Brainfuck Port When?",
	//Idea from discord user "azhar_sur10"
	"Versus Ron Ultimate Meme",
	"https://youtu.be/dQw4w9WgXcQ?si=07EyO6-a_NGKb_8y",
	"\"Theres virus's embeded in the pngs!\" Dumbass-2024",
	//Name from "miilex_mii" on discord
	"Vs Ron: Ronpansion",
])[Math.floor(Math.random() * 20)];

import flixel.FlxSprite;
import flixel.FlxState;

var loadingA:String = Std.string(FlxG.random.int(1, 9));

public static var CURRENT_LOADING_SCREEN = loadingA;

var loadingScreen:FlxSprite;

static var loadingPlayState = false;

function create() {
	if (!out){
	//FlxTween.tween(window, {opacity: 1}, 0.4);
	Lib.application.window.title = mod_name+"--name is temp";
	}
	/*else{
		FlxTween.tween(window, {opacity: 0}, 0.4);
	}*/
}

//stolen_from_voiid_:(
function postCreate()
{
	if (newState is PlayState)
		loadingPlayState = true;

	if (loadingPlayState) //show loading screen when loading playstate
	{
		loadingScreen = new FlxSprite().loadGraphic(Paths.image("menus/loading-screens/"+CURRENT_LOADING_SCREEN));
		loadingScreen.setGraphicSize(FlxG.width, FlxG.height);

		loadingScreen.antialiasing = true;
		loadingScreen.scrollFactor.set(0,0);
		loadingScreen.screenCenter();

		if (!out)
		{
			loadingScreen.flipY = true;
			loadingPlayState = false;
			add(loadingScreen);
			remove(transitionSprite);
			remove(blackSpr);

			transitionTween = FlxTween.tween(loadingScreen, {alpha: 0}, 0.6, {ease:FlxEase.sineOut, onComplete:function(twn)
			{
				finish();
			}});

			CURRENT_LOADING_SCREEN = loadingA;
		}
		else 
		{
			transitionTween.onComplete = function(twn)
			{
				add(loadingScreen);

				loadingScreen.alpha = 0;
				
				FlxTween.tween(loadingScreen, {alpha: 1}, 0.6, {ease:FlxEase.sineOut, onComplete:function(twn)
				{
					nextFrameSkip = true;
				}});
				FlxG.sound.music.fadeOut(0.6, 0);
			}
		}
	}
}	