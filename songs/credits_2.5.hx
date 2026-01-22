import flixel.text.FlxTextBorderStyle;

var credits = 'uhrhmmmm.. um';

if(PlayState.SONG.meta.credits_old!=null){
function onSongStart() {

    switch (curSong.toLowerCase()){
		case 'atelophobia':
			credits = 'firey';
		case 'ayo-b':
			credits = 'Tigression';
		case 'bloodshed-b':
			credits = 'Sic';
		case 'trojan-virus-b':
			credits = 'Sic';
		case 'atelophobia-b':
			credits = 'Tigression';
		case 'factory-reset-b':
			credits = 'Tigression';
		case 'holy-shit-dave-fnf':
			credits = 'DeepFriedBolonese';
		case 'frosting-over':
			credits = 'Tigression';
		case 'raw-meaty-meats':
			credits = 'Zesty';
		case 'assassination':
			credits = 'Zesty & Tigression';
		case 'steak':
			credits = 'Zesty';
		case 'typical-dissecration':
			credits = 'nobody yet';
		case 'bloodshed-two':
			credits = 'BlueBoyeet';
		case 'bloodbath':
			credits = 'BlueBoyeet';
		case 'withered':
			credits = 'ZeroDawn & Sz';
		case 'defecation':
			credits = 'ArmandRonan';
		}
		var rSongname = curSong;
		if (StringTools.endsWith(curSong, "-b"))
		{
			rSongname = rSongname.substr(0, rSongname.length-2);
			rSongname += " B-Sides";
		}
		var songNameC:FlxText = new FlxText(0, 0, 0, rSongname, 32);
		var songNameD:FlxText = new FlxText(0, 0, 0, PlayState.SONG.meta.credits_old, 32);
		songNameC.setFormat(Paths.font("w95.otf"), 52, FlxColor.YELLOW, 'right', FlxTextBorderStyle.OUTLINE,FlxColor.BLACK); 
		songNameC.scrollFactor.set();
		songNameC.screenCenter(FlxAxes.Y);
		songNameC.x = -songNameC.fieldWidth - 100;
		songNameC.y -= 175;
		songNameD.setFormat(Paths.font("w95.otf"), 32, FlxColor.WHITE, 'right', FlxTextBorderStyle.OUTLINE,FlxColor.BLACK); 
		songNameD.scrollFactor.set();
		songNameD.screenCenter(FlxAxes.Y);
		songNameD.x = -songNameC.fieldWidth - 100;
		songNameD.y -= 125;
		var black:FlxSprite = new FlxSprite(songNameC.x - 600, songNameC.y - 20).makeGraphic(600, Std.int(songNameC.height * 2.75), FlxColor.BLACK);
		black.scrollFactor.set();
		add(black);
		add(songNameC);
		add(songNameD);
		black.cameras = [camOther2];
		songNameC.cameras = [camOther2];
		songNameD.cameras = [camOther2];
		trace(songNameC.fieldWidth);
		FlxTween.tween(songNameC, {x: songNameC.fieldWidth - 140}, 1, {
			ease: FlxEase.backInOut,
			onComplete: function(twn:FlxTween)
			{
				new FlxTimer().start(2, function(tmr:FlxTimer)
				{
					FlxTween.tween(songNameC, {x: -songNameC.fieldWidth - 100}, 1, {
						ease: FlxEase.backInOut,
						onComplete: function(twn:FlxTween){songNameC.destroy();}
					});
				});
			}
		});
		FlxTween.tween(songNameD, {x: songNameD.fieldWidth - 20}, 1, {
			ease: FlxEase.backInOut,
			onComplete: function(twn:FlxTween)
			{
				new FlxTimer().start(2, function(tmr:FlxTimer)
				{
					FlxTween.tween(songNameD, {x: -songNameD.fieldWidth - 100}, 1, {
						ease: FlxEase.backInOut,
						onComplete: function(twn:FlxTween)
						{
							songNameD.destroy();
						}
					});
				});
			}
		});
		FlxTween.tween(black, {x: 86 - 200}, 1, {
			ease: FlxEase.backInOut,
			onComplete: function(twn:FlxTween)
			{
				new FlxTimer().start(2, function(tmr:FlxTimer)
				{
					FlxTween.tween(black, {x: -songNameC.x - 600}, 1, {
						ease: FlxEase.backInOut,
						onComplete: function(twn:FlxTween)
						{
							black.destroy();
						}
					});
				});
			}
		});
	}
}