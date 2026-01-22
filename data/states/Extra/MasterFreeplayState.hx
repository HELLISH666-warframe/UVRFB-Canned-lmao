import flixel.addons.display.FlxBackdrop;
import flixel.text.FlxTextBorderStyle;
import flixel.graphics.FlxGraphic;
import funkin.backend.chart.Chart;
static var curSelectedMaster:Int = 0;
var textList = ["MAIN","CLASSIC","EXTRAS","FANMADE","UNFINISHED","RETAKE"];
//var textList = ["2.5","V2.5","DSIDES","EASY","NORMAL","V4","OLD"];
var grpMenuShit = new FlxTypedGroup();


//Freeplay_shit.
static var inFreeplay:Bool = false;

songs = [];
var songRealList = [
	["ron","wasted","ayo","bloodshed","trojan-virus","Recycle-Bin","file-manipulation","factory-reset"],
	["ron-classic","wasted-classic","ayo-classic","bloodshed-classic","trojan-virus-classic","bleeding-classic"],
	["Tutorial","bloodbath","official-debate","gron","difficult-powers","bijuu","scrub-of-the-day","trouble","withered-tweaked","atelophobia","holy-shit-dave-fnf","slammed","meme-machine","frosting-over","ron-b","file-manipulation-b","ron-dsides","bloodshed-b-old","sabotage-remix","lights-down-remix","pretty-wacky","cheese-touch","he-hates-me","certified-champion","rong-aisle","bloodshed-legacy-redux","clusterfunk","awesome-ron","oh-my-god-hes-ballin","fardventure","triad","bleeding","haemorrhage","anti-piracy","double-trouble"],
	["wasted-erect","ayo-erect","bloodshed-erect","trojan-virus-erect","file-manipulation-b","bleeding-b","bloodshed-two-b","Lost-bloodshed","unwanted","x-files-mutilation","bloodlovania","doppleganger","dimensional-crisis","bloodshed-d","backdoor","apollo","techne","wasted-d-fanmade"],
	["admin","ayo-old","bloodshed-2.5-updated?","defecation","groncy","heart-attack","homicidal-lunacy","no-escape","not-bloodshed","omnipresent","raw","raw-meaty-meats","steak","uncooked-meat","trojan-virus-old","typical-dessecration","unnamed_DAB_song","wasted-d","weed"],
	["ron_untitiled","ayo_untitled","bloodshed_untitled","wasted-d_untitled","ayo-d_untitled","bloodshed-two_but_good"]
];

var grpSongs2 = new FlxTypedGroup();
for(s in songRealList[curSelectedMaster]) songs.push(Chart.loadChartMeta(s, "hard", true));
static var curSelectedFP:Int = 0;
var featuredChar = new FlxSprite(-300);
var preload = [];
var curDifficulty:Int = 0;
var bar = new FlxSprite();
var diffdrop = new FlxBackdrop(Paths.image('menus/Extras/Freeplay/diffs/hard'), FlxAxes.Y, 300, 20);

function create() {
	FlxG.scaleMode.width = 960;
	window.resize(960,720);
	if (FlxG.save.data.crt) FlxG.camera.addShader(crt = new CustomShader("fake CRT"));

	top = new FlxBackdrop(Paths.image('menus/Extras/Freeplay/???'), FlxAxes.X, 5, 0);
	bottom = new FlxBackdrop(Paths.image('menus/Extras/Freeplay/???'), FlxAxes.X, 5, 0);
	new FlxTimer().start(0.005, function(tmr:FlxTimer) { diffdrop.y+=2; top.x -= 2; bottom.x += 2; tmr.reset(0.005);});
	for(i in [top,bottom]) add(i).scale.set(5,5); top.y+=20; bottom.y+=690;

	for (i in 0...textList.length) {
		var item = new FlxText(210,160+ (i * 80), 540, textList[i]);
		item.setFormat(Paths.font("w95.otf"), 60, FlxColor.WHITE,'center');
		item.ID = i;
		grpMenuShit.add(item);
	}
	add(grpMenuShit);

	changeMaster(0);


	//Freeplay_shit.
	add(featuredChar).alpha=0;
	add(bar = CoolUtil.loadAnimatedGraphic(new FlxSprite(190,-20),Paths.image('menus/V3/freeplay/bar'))).alpha=0;
	add(diffText = new FlxText(200,  48, 0, "", 24).setFormat(Paths.font('w95.otf'), 24, FlxColor.WHITE, 'center')).alpha=0;
	add(diffdrop).scale.set(4,4);
	diffdrop.x+=40;
	diffdrop.alpha=0;
	if(inFreeplay)makeSongs();
}
function update(elapsed:Float) {
	if(inFreeplay) {
		if (controls.LEFT_P||controls.RIGHT_P){
			changeSelection(controls.RIGHT_P ? 1 : -1);
			changeDiff(0);
		}
		if (controls.UP_P||controls.DOWN_P) changeDiff(controls.UP_P ? 1 : -1);
		if (controls.BACK) {
			dieBro();
		}
		if (controls.ACCEPT) playSong();
	}else{
		if (controls.UP_P||controls.DOWN_P) {
			changeMaster(controls.DOWN_P ? 1 : -1);
			CoolUtil.playMenuSFX(0, 0.7);
		}
		if(controls.ACCEPT) {
			makeSongs();
			new FlxTimer().start(0.02, ()-> {inFreeplay=true;});
		}
		if(controls.BACK) FlxG.switchState(new MainMenuState());
	}
}
function changeMaster(p) {
	curSelectedMaster = FlxMath.wrap(curSelectedMaster + p, 0, textList.length-1);

	for (item in grpMenuShit.members) {
		if (curSelectedMaster == item.ID) item.color = 0xFFFFF777; else item.color = 0xFFFFFFF;
	}
	Assets.exists(Paths.image('menus/Extras/Freeplay/' + textList[curSelectedMaster])) ? port=textList[curSelectedMaster] : port="???";
	for(bars in [top,bottom]) bars.loadGraphic(Paths.image('menus/Extras/Freeplay/'+port));
}


//Freeplay_shit.
function makeSongs(){
	songs=[];
	preload=[];
	featuredChar.alpha=1;
	for(s in songRealList[curSelectedMaster]) songs.push(Chart.loadChartMeta(s, "hard", true));
	for(i in grpSongs2)
	remove(grpSongs2);
	for (i in 0...songs.length){
		var songText:FlxText = new FlxText(500, 650, 500, songs[i].name.toUpperCase(),44);
		songText.screenCenter(FlxAxes.X);
		songText.setFormat(Paths.font("w95.otf"), 44, FlxColor.YELLOW, "center", FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
		songText.ID=i;
		add(songText).alpha=1;
		grpSongs2.add(songText);
	}
	add(grpSongs2);
	curSelectedFP = 0;
	for (i in songs) {
		Assets.exists(Paths.image('menus/V3/freeplay/portraits/' + i.port)) ? port=i.port : port="ron";
		var graphic = FlxGraphic.fromAssetKey(Paths.image('menus/V3/freeplay/portraits/' + port));
	    graphic.persist =  true;
	    preload.push(graphic);
	}
	changeSelection(0);
	changeDiff(0);
	diffdrop.alpha=bar.alpha=1;
	bottom.alpha=0.5;
}
function dieBro(){
	for (item in grpSongs2.members)
		item.destroy();
	bar.alpha=0;
	featuredChar.alpha=0;
	diffdrop.alpha=0;
	inFreeplay=false;
	bottom.alpha=1;
}
function changeSelection(change:Int = 0, playSound:Bool = true){
	FlxTween.globalManager.completeTweensOf(featuredChar);
	curSelectedFP = FlxMath.wrap(curSelectedFP + change, 0, songs.length - 1);

	featuredChar.loadGraphic(preload[curSelectedFP]);
	for (item in grpSongs2.members) {item.alpha = 0;
		if (curSelectedFP == item.ID) item.alpha = 1;
	}
}

function changeDiff(p) {
	curDifficulty = FlxMath.wrap(curDifficulty + p, 0, songs[curSelectedFP].difficulties.length-1);
	diffText.text = songs[curSelectedFP].difficulties[curDifficulty];
	Assets.exists(Paths.image('menus/Extras/Freeplay/diffs/' + songs[curSelectedFP].difficulties[curDifficulty])) ? port=songs[curSelectedFP].difficulties[curDifficulty] : port="???";
	diffdrop.loadGraphic(Paths.image('menus/Extras/Freeplay/diffs/'+port));
}

function playSong(){
	FlxG.scaleMode.width = 1280;
	window.resize(1280,720);
	prevSong="FUCK";
	PlayState.loadSong(songs[curSelectedFP].name, songs[curSelectedFP].difficulties[curDifficulty].toLowerCase());
	inFreeplay = false;
	FlxG.switchState(new PlayState());
}