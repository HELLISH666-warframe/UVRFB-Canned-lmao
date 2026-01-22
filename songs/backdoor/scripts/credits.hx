import flixel.text.FlxTextBorderStyle;
var credits:FlxSprite = new FlxSprite(320, -500).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/credbar/credbar'));
var musician:FlxText = new FlxText(140, 100, 0, "musician",25);
var musician2:FlxText = new FlxText(300, 100, 0, "The Funny",25);
var musicianicon:FlxSprite = new FlxSprite(-200,100).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/credbar/cartman'));
var artist:FlxText = new FlxText(600, 100, 0, "Artist",25);
var artist2:FlxText = new FlxText(1100, 100, 0, "ShaeRon",25);
var artisticon:FlxSprite = new FlxSprite(405,100).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/credbar/shae'));
var coder:FlxText = new FlxText(1900, 100, 0, "Coder",25);
var coder2:FlxText = new FlxText(1900, 100, 0, "Alyx",25);
var codericon:FlxSprite = new FlxSprite(910,100).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/credbar/alyx'));
var credits2:FlxSprite = new FlxSprite(910, 850).loadGraphic(Paths.image('stages/fan-made_stuff/alyxs_stuff/credbar/credits'));
function postCreate() {
    credits.camera =camOther;
    credits.scrollFactor.set(1,1);
    credits.scale.set(3.25, 3.25);
    add(credits);

    musician.camera = camOther;
    musician.y = -350;
    add(musician).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    musician2.camera = camOther;
    musician2.y = -350;
    musician2.angle = -20;
    add(musician2).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    musicianicon.camera = camOther;
    musicianicon.scale.set(0.15,0.15);
    musicianicon.y = -350;
    musicianicon.angle = -20;
    add(musicianicon);

    artist.camera = camOther;
    artist.y = -500;
    add(artist).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    artist2.camera = camOther;
    artist2.y = -500;
    artist2.angle = -20;
    add(artist2).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    artisticon.camera = camOther;
    artisticon.scale.set(0.5,0.5);
    artisticon.y = -500;
    artisticon.angle = -20;
    add(artisticon);

    coder.camera = camOther;
    coder.y = -650;
    add(coder).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    coder2.camera = camOther;
    coder2.y = -650;
    coder2.angle = -20;
    add(coder2).setFormat(Paths.font("vcr.ttf"), 25,  FlxColor.WHITE, "left", FlxTextBorderStyle.OUTLINE,FlxColor.BLACK);

    codericon.camera = camOther;
    codericon.y = -650;
    codericon.angle = -20;
    add(codericon);

    credits2.camera = camOther;
    credits2.scrollFactor.set(1,1);
    credits2.scale.set(2,2);
    add(credits2);
}
function onSongStart(){
    FlxTween.tween(credits, {y: 220}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(credits2, {y: 500}, 1, {ease: FlxEase.cubeOut});
    FlxTween.tween(musician, {y: 450}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(artist, {y: 300}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(coder, {y: 150}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(credits2, {angle: 20}, 1, {ease: FlxEase.cubeOut});
    FlxTween.tween(musician, {angle: -20}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(artist, {angle: -20}, 1.5, {ease: FlxEase.bounceOut});
    FlxTween.tween(coder, {angle: -20}, 1.5, {ease: FlxEase.bounceOut});
}

function beatHit(curBeat:Int){
    if (curBeat == 16){
        FlxTween.tween(credits, {y: -100}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(credits2, {y: 400}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(credits2, {angle: 40}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(musician, {y: 400}, 0.5, {ease: FlxEase.cubeOut,onComplete: function(twn:FlxTween){
            stupidfuckingthingie();
        }});
        FlxTween.tween(artist, {y: 250}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(coder, {y: 100}, 0.5, {ease: FlxEase.cubeOut});
    }
    if (curBeat <= 32){
        if (curBeat %2 == 0){
            FlxTween.tween(musicianicon, {angle: -20}, 0.75, {ease: FlxEase.cubeOut});
            codericon.angle=-40;
            musicianicon.angle=160;
        }
        if (curBeat %2 == 1){
            codericon.angle=0;
        }
        FlxTween.tween(credits2.scale, {x: 2,y:2}, 0.5, {ease: FlxEase.cubeOut});
        //FlxTween.tween(camOther, {zoom: 1}, 0.5, {ease: FlxEase.cubeOut});
        //camOther.zoom=1.025;
        FlxTween.tween(musicianicon.scale, {x: 0.15,y:0.15}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(artisticon.scale, {x: 0.5,y:0.5}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(codericon.scale, {x: 1,y:1}, 0.5, {ease: FlxEase.cubeOut});
        FlxTween.tween(codericon, {angle: -20}, 0.5, {ease: FlxEase.cubeOut});
        credits2.scale.set(2.1,2.1);
        musicianicon.scale.set(0.175,0.175);
        artisticon.scale.set(0.55,0.55);
        codericon.scale.set(1.1,1.1);
    }
}

function stupidfuckingthingie(){
    FlxTween.tween(credits, {y: 1100}, 1, {ease: FlxEase.cubeIn});
    FlxTween.tween(credits2, {y: 850}, 1, {ease: FlxEase.cubeIn});
    FlxTween.tween(credits2, {angle: -20}, 1, {ease: FlxEase.cubeIn});
    FlxTween.tween(musician, {y: 1600}, 1, {ease: FlxEase.cubeIn,onComplete: function(twn:FlxTween){
        stupidfuckingthingie();
    }});
    //doTweenY('upiesboi', 'musician', 1600, 1, 'cubeIn')//loops_it???
    FlxTween.tween(artist, {y: 1450}, 1, {ease: FlxEase.cubeIn});
    FlxTween.tween(coder, {y: 1300}, 1, {ease: FlxEase.cubeIn});
}

function postUpdate(elapsed:Float){
    var currentBeat2:Float = (Conductor.songPosition / 1000)*(Conductor.bpm/170);

    if (curBeat <= 32){
        musician2.x=musician.x+10;
        musician2.y=musician.y+35;
        artist2.x=artist.x+10;
        artist2.y=artist.y+35;
        coder2.x=coder.x+10;
        coder2.y=coder.y+35;
        musicianicon.y=musician2.y-260;
        artisticon.y=artist2.y-20;
        codericon.y=coder2.y-35;
        artisticon.angle=-20 - -20 *  Math.cos((currentBeat2*100)*Math.PI);
    }
    //if(camOther!=null){camOther.zoom=1;trace("It's_real.");}
}