import flixel.graphics.FlxGraphic;
import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;
import flixel.text.FlxTextBorderStyle;
import funkin.backend.chart.Chart;
import funkin.savedata.FunkinSave;
import Alphabetthing;
import lime.ui.Window;

//shaders
var time:Float = 0;
var chrom = new CustomShader("chromatic aberration");
var fish = new CustomShader("fisheye1");
var glitch = new CustomShader("glitchsmh");
var grey = new CustomShader("grayscale");
var vhs = new CustomShader("vhs");
var official_or_not:String;
var bar:FlxSprite;
songs = [];
var prevchar:String = "";
songRealList = [
	["ron","wasted","ayo","bloodshed","trojan-virus","Recycle-Bin","file-manipulation","factory-reset"],
	["ron-classic","wasted-classic","ayo-classic","bloodshed-classic","trojan-virus-classic","bleeding-classic"],
	["Tutorial","bloodbath","official-debate","gron","difficult-powers","bijuu","scrub-of-the-day","trouble","withered-tweaked","atelophobia","holy-shit-dave-fnf","slammed","meme-machine","frosting-over","ron-b","file-manipulation-b","ron-dsides","bloodshed-b-old","sabotage-remix","lights-down-remix","pretty-wacky","cheese-touch","he-hates-me","certified-champion","rong-aisle","bloodshed-legacy-redux","clusterfunk","awesome-ron","oh-my-god-hes-ballin","fardventure","triad","bleeding","haemorrhage","anti-piracy","double-trouble"],
	["wasted-erect","ayo-erect","bloodshed-erect","trojan-virus-erect","file-manipulation-b","bleeding-b","bloodshed-two-b","Lost-bloodshed","unwanted","x-files-mutilation","bloodlovania","doppleganger","dimensional-crisis","bloodshed-d","backdoor","apollo","techne","wasted-d-fanmade"],
	["admin","ayo-old","bloodshed-2.5-updated?","defecation","groncy","heart-attack","homicidal-lunacy","no-escape","not-bloodshed","omnipresent","raw","raw-meaty-meats","steak","uncooked-meat","trojan-virus-old","typical-dessecration","unnamed_DAB_song","wasted-d","weed"]
];
modelist = ["MAIN","CLASSIC","EXTRAS","FANMADE","UNFINSHED"];
rsongsFound = songRealList[FlxG.save.data.freeplaything];

for(s in rsongsFound)
	songs.push(Chart.loadChartMeta(s, "hard", true));
//cam
var camText = new FlxCamera();
camText.bgColor = null;

var portrait = new FlxSprite();
var portraitOverlay = new FlxSprite();
var preload = [];
var grpSongs2:FlxTypedGroup<Alphabet> = [];
var iconArray2:Array<HealthIcon> = [];
var modeText:FlxText = new FlxText(10, 10, 0, modelist[FlxG.save.data.freeplaything], 48);
var fanmade_text = new FlxText(540, 1, 0, official_or_not, 48);
var pressshift:FlxText = new FlxText(1, 100, 0, "Press shift to view the page of this fan-mod!", 48);
var chromeOffset = (FlxG.save.data.chromeOffset/350);

function postUpdate(elapsed:Float){time += elapsed;
	chrom.data.rOffset.value = [chromeOffset*Math.sin(time)];
	chrom.data.bOffset.value = [-chromeOffset*Math.sin(time)];
	glitch.iTime = time;
	vhs.iTime = time;

	for (i in 0...songs.length)
		grpSongs2.members[i].y += (Math.sin(i+time)/2);

	for (item in grpSongs2.members)
		item.forceX = FlxMath.lerp(item.x, 125 + (65 * (item.ID - curSelected)), lerpFix(0.1));
	portraitOverlay.y = portrait.y;
	portraitOverlay.angle = portrait.angle;
	if(controls.BACK)FlxG.switchState(new ModState('V3/MasterFreeplayState'));
	if(FlxG.keys.pressed.SHIFT && songs[curSelected].modlink!=null) {
		CoolUtil.openURL(songs[curSelected].modlink);
	}
	/*window.x=window_x- 390 *  Math.cos((time*0.25)*Math.PI);
    window.y=320- 200 *  Math.cos((time*0.42)*Math.PI);
	window.x=window_x- 100 *  Math.cos((time*0.25)*Math.PI);
    window.y=320- 50 *  Math.cos((time*0.42)*Math.PI);
	*/
	for (i in 0...grpSongs2.length)
		iconArray2[i].setPosition(grpSongs2.members[i].x+grpSongs2.members[i].width+10,grpSongs2.members[i].y-30);
}

function shadering() {
    switch(songs[curSelected].displayName)
    {
		case "gron": if(FlxG.save.data.grey)FlxG.camera.addShader(grey);camText.addShader(grey);
		case "trojan-virus"|"Bleeding":glitch.on = 1.;
		default:FlxG.camera.removeShader(grey);camText.removeShader(grey);
			glitch.on = 0;
    }
	diffText.color = switch(diffText.text)
	{
		case '< COOL >':0xF00020;
		case 'STAINED'|'FANMADE-D':0x347FF1;
		default: 0xFFFFFFFF;		
	}
	fanmade_text.color = switch(diffText.text)
	{
		case 'STAINED':0x347FF1;
		default: 0xffee00;		
	}
	if (Assets.exists(Paths.image('menus/V3/freeplay/portraits/'+songs[curSelected].port+'-over')))
	{
		portraitOverlay.loadGraphic(Paths.image('menus/V3/freeplay/portraits/'+songs[curSelected].port+'-over'));
		portraitOverlay.updateHitbox();
		portraitOverlay.screenCenter();
		new FlxTimer().start(0.1, function(tmr:FlxTimer)
		portraitOverlay.visible = true);
	}
	else
		new FlxTimer().start(0.16, function(tmr:FlxTimer)
		portraitOverlay.visible = false);

if(songs[curSelected].normalport){
FlxTween.tween(bar, {angle:0,x:490}, 0.4, {ease: FlxEase.quintIn});
FlxTween.tween(portrait, {x:0,angle:0}, 0.4, {ease: FlxEase.quintIn});
}
else if(FlxG.save.data.freeplaything==3){
	FlxTween.tween(bar, {angle:30,x:400}, 0.4, {ease: FlxEase.quintIn});
	FlxTween.tween(portrait, {angle:5,x:600}, 0.6, {ease: FlxEase.quintIn});
}
}
function create(){
	grpSongs2 = new FlxTypedGroup();
	add(grpSongs2);
	for (i in 0...songs.length)
	{
		var songText = new Alphabetthing(0, (70 * i) + 30, songs[i].displayName.toUpperCase(),true);
		songText.isMenuItem = true;
		songText.targetY = i;
		songText.ID = i;
		songText.camera = camText;
		grpSongs2.add(songText);
		var icon = new HealthIcon(songs[i].icon);
		icon.sprTracker = songText;

		iconArray2.push(icon);
		add(icon);
	}
	for (i in 0...iconArray2.length) remove(iconArray2[i]);
	if(curSelected >= songs.length) curSelected = 0;
	modeText.setFormat(Paths.font("w95.otf"), 48, FlxColor.WHITE);
	insert(2,modeText);

	pressshift.setFormat(Paths.font("w95.otf"), 32, FlxColor.WHITE);
	//pressshift.camera=camText;
	if(FlxG.save.data.freeplaything==3){insert(2,pressshift);
	portrait.x=900;
	}
	portrait.updateHitbox();
	insert(2,portrait);
}
function postCreate() {
	FlxG.cameras.add(camText, false);
	remove(grpSongs);
	for (i in iconArray) remove(i);

	bg.frames = Paths.getSparrowAtlas('menus/V3/freeplay/mainbgAnimate');
	if(FlxG.save.data.freeplaything == 1){
		bg.frames = Paths.getSparrowAtlas('menus/V3/freeplay/classicbgAnimate');
		FlxG.camera.addShader(vhs);
	}
	bg.animation.addByPrefix('animate', 'animate', 24, true);
	bg.animation.play('animate');
	bg.scale.set(2,2);
	bg.screenCenter();

	bar = CoolUtil.loadAnimatedGraphic(new FlxSprite(490,-20), Paths.image('menus/V3/freeplay/bar'));
	if(FlxG.save.data.freeplaything==3){
		bar.x=-100;
	}
	insert(3,bar);

	for (i in 0...iconArray2.length) add(iconArray2[i]);
	
	insert(4,portraitOverlay);
	scoreBG.alpha = 0.3;

	fanmade_text.setFormat(Paths.font("w95.otf"), 48, FlxColor.RED);
	fanmade_text.angle=-3;
	insert(9,fanmade_text);
			
	for (i in songs) {
		if (Assets.exists(Paths.image('menus/V3/freeplay/portraits/' + i.port)))
			kms='menus/V3/freeplay/portraits/' + i.port;
		else
			kms='menus/V3/freeplay/portraits/fucking_useless';
		var graphic = FlxGraphic.fromAssetKey(Paths.image(kms));
		graphic.persist = true;
		preload.push(graphic);
	}
	changeSelection(0, true);
	if (FlxG.save.data.glitch)FlxG.camera.addShader(glitch);
	if (FlxG.save.data.crt)FlxG.camera.addShader(crt = new CustomShader("fake CRT"));
	if (FlxG.save.data.chrom) FlxG.camera.addShader(chrom);
	camText.addShader(fish);
	fish.MAX_POWER = 0.2;
	var coolemitter:FlxTypedEmitter = new FlxTypedEmitter();
	coolemitter.velocity.set(0, -5, 0, -10);
	coolemitter.y = FlxG.height;

	var coolzemitter:FlxTypedEmitter = new FlxTypedEmitter();
	coolzemitter.velocity.set(0, 5, 0, 10);

	for (i in 0...150)
	{
		var p = new FlxParticle();
		var p2 = new FlxParticle();
		p.makeGraphic(6,6,FlxColor.BLACK);
		p2.makeGraphic(12,12,FlxColor.BLACK);

		coolemitter.add(p);
		coolemitter.add(p2);
		coolzemitter.add(p);
		coolzemitter.add(p2);
	}
	for(i in [coolzemitter,coolemitter]){
		i.width = FlxG.width*1.5;
		i.angularVelocity.set(-10, 10);
		i.lifespan.set(5);
		add(i);
		i.start(false, 0.05);
	}
	if(FlxG.save.data.freeplaything==3){
		FlxG.camera.fade(FlxColor.BLACK, 0.7, true);
		FlxTween.tween(bar, {angle:30}, 0.4, {ease: FlxEase.quintIn});
		FlxTween.tween(bar, {x:400}, 0.4, {ease: FlxEase.quintIn});
		FlxTween.tween(portrait, {x: portrait.x - 300,angle:5}, 0.5, {ease: FlxEase.quintIn});
	}
	window.y=window_y;
	FlxTween.tween(window, {y: window_y,x:window_x,opacity:1}, 0.8, {ease: FlxEase.expoOut});
}
function onChangeSelection(event) {
	if (event.change == 0) event.playMenuSFX = false;
	FlxTween.globalManager.completeTweensOf(portrait);
	var val = event.value;
	//I_know_this_is_dumb_but_dont_know_how_to_do_it_in_a_NON-dumb_way
	FlxTween.tween(scoreText, {y: scoreText.y + 0}, 0.00000000000000001, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween){
			fanmade_text.text=songs[curSelected].version;
		var bullShit:Int = 0;

		for (i in grpSongs2)
			{
				i.targetY = bullShit - curSelected;
				bullShit++;
				i.alpha = 0.6;
				if (i.targetY == 0) i.alpha = 1;
			}

		for (i in 0...iconArray2.length)
			iconArray2[i].alpha = 0.6;
	
		iconArray2[curSelected].alpha = 1;
		shadering();}});

//acts as an alt feeplay of some sorts--Drifter
if(FlxG.save.data.freeplaything==3){
	FlxTween.tween(portrait, {y: portrait.y + 300}, 0.2, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween) {
		portrait.loadGraphic(preload[val]);
		portrait.screenCenter(FlxAxes.Y);
		var mfwY2 = portrait.y;
		portrait.y -= 20;
		FlxTween.tween(portrait, {y: mfwY2}, 0.4, {ease: FlxEase.elasticOut});
	}});
}
var character = songs[val].port;
if((FlxG.save.data.freeplaything!=3||songs[curSelected].normalport)&&(prevchar != character)){
	FlxTween.tween(portrait, {y: portrait.y + 45, angle: 5}, 0.2, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween) {
		portrait.loadGraphic(preload[val]);
		portrait.screenCenter();
		var mfwY = portrait.y;
		portrait.y -= 20;
		portrait.angle = -5;
		FlxTween.tween(portrait, {y: mfwY, angle: 0}, 0.4, {ease: FlxEase.elasticOut});
		prevchar = character;
	}});
}
}
public static function lerpFix(value:Float) {return value / (60 / 60);}