import flixel.graphics.FlxGraphic;
import funkin.backend.chart.Chart;

var grpSongs2 = new FlxTypedGroup();
var diffText:FlxText;

songs = [];
var songRealList = [
	["ron","wasted","ayo","bloodshed","trojan-virus","Recycle-Bin","file-manipulation","factory-reset"],
	["ron-classic","wasted-classic","ayo-classic","bloodshed-classic","trojan-virus-classic","bleeding-classic"],
	["Tutorial","bloodbath","official-debate","gron","difficult-powers","bijuu","scrub-of-the-day","trouble","withered-tweaked","atelophobia","holy-shit-dave-fnf","slammed","meme-machine","frosting-over","ron-b","file-manipulation-b","ron-dsides","bloodshed-b-old","sabotage-remix","lights-down-remix","pretty-wacky","cheese-touch","he-hates-me","certified-champion","rong-aisle","bloodshed-legacy-redux","clusterfunk","awesome-ron","oh-my-god-hes-ballin","fardventure","triad","bleeding","haemorrhage","anti-piracy","double-trouble"],
	["wasted-erect","ayo-erect","bloodshed-erect","trojan-virus-erect","file-manipulation-b","bleeding-b","bloodshed-two-b","Lost-bloodshed","unwanted","x-files-mutilation","bloodlovania","doppleganger","dimensional-crisis","bloodshed-d","backdoor","apollo","techne","wasted-d-fanmade"],
	["admin","ayo-old","bloodshed-2.5-updated?","defecation","groncy","heart-attack","homicidal-lunacy","no-escape","not-bloodshed","omnipresent","raw","raw-meaty-meats","steak","uncooked-meat","trojan-virus-old","typical-dessecration","unnamed_DAB_song","wasted-d","weed"]
];

for(s in songRealList[FlxG.save.data.freeplaything_cc]) songs.push(Chart.loadChartMeta(s, "hard", true));

static var curSelectedFP:Int = 0;
var curDifficulty:Int = 0;

var featuredChar = new FlxSprite(-300);
static var inFreeplay:Bool = true;

var preload = [];

static var prevSong:String = "balls";
 
function create() {
	FlxG.scaleMode.width = 960;
	window.resize(960,720);
	add(featuredChar);

	add(grpSongs2);
	for (i in 0...songs.length){
		var songText:FlxText = new FlxText(500, 650, 500, songs[i].name.toUpperCase(),44);
		songText.screenCenter(FlxAxes.X);
		songText.setFormat(Paths.font("w95.otf"), 44, FlxColor.WHITE, "center");
		songText.ID=i;
		add(songText);
		grpSongs2.add(songText);
	}

	add(diffText = new FlxText(200,  48, 0, "", 24).setFormat(Paths.font('w95.otf'), 24, FlxColor.WHITE, 'center'));

	curSelectedFP = 0;

	for (i in songs) {
		Assets.exists(Paths.image('menus/V3/freeplay/portraits/' + i.port)) ? port=i.port : port="ron";
		var graphic = FlxGraphic.fromAssetKey(Paths.image('menus/V3/freeplay/portraits/' + port));
	    graphic.persist =  true;
	    preload.push(graphic);
	}

	changeSelection(0);
	changeDiff(0);
}

static var curPlayingInst = Paths.inst(songs[curSelectedFP].name, songs[curSelectedFP].difficulties[curDifficulty]);

function update(elapsed:Float) {
	if(inFreeplay) {
		if (controls.LEFT_P||controls.RIGHT_P){
			changeSelection(controls.RIGHT_P ? 1 : -1);
			changeDiff(0);
		}
		if (controls.UP_P||controls.DOWN_P) changeDiff(controls.DOWN_P ? 1 : -1);
		if (controls.BACK) {
			FlxG.switchState(new ModState('Extra/TitleState'));
		}
		if (controls.ACCEPT) playSong();
	}
}

function changeSelection(change:Int = 0, playSound:Bool = true){
	FlxTween.globalManager.completeTweensOf(featuredChar);
	curSelectedFP = FlxMath.wrap(curSelectedFP + change, 0, songs.length - 1);

	featuredChar.loadGraphic(preload[curSelectedFP]);
	featuredChar.alpha = 0.0001;

	FlxTween.tween(featuredChar, {alpha: 1}, 0.25, {ease: FlxEase.sineInOut});

	curPlayingInst = Paths.inst(songs[curSelectedFP].name, songs[curSelectedFP].difficulties[curDifficulty]);
	trace(prevSong);
	if(curPlayingInst!=prevSong){
		FlxG.sound.playMusic(curPlayingInst, 1);
		prevSong=curPlayingInst;
	}
	for (item in grpSongs2.members) {item.alpha = 0;
		if (curSelectedFP == item.ID) item.alpha = 1;
	}
}


function changeDiff(p) {
	curDifficulty = FlxMath.wrap(curDifficulty + p, 0, songs[curSelectedFP].difficulties.length-1);
	diffText.text = songs[curSelectedFP].difficulties[curDifficulty];
}

function playSong(){
	prevSong="FUCK";
	PlayState.loadSong(songs[curSelectedFP].name, songs[curSelectedFP].difficulties[curDifficulty].toLowerCase());
	inFreeplay = false;
	FlxG.switchState(new PlayState());
}