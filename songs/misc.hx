public var camOther:HudCamera;
public var camOther2:HudCamera;

function create() {
    FlxG.cameras.add(camOther = new HudCamera(), false);
    FlxG.cameras.add(camOther2 = new HudCamera(), false);
    camOther2.bgColor = 0x00000000;
    camOther.bgColor = 0x00000000;
}
/*
public var camOther:HudCamera;
public var camOther2:HudCamera;

function create() {
    FlxG.cameras.add(camOther2 = new HudCamera(), false);
    camOther2.bgColor = 0x00000000;
}
function postCreate() {
    FlxG.cameras.remove(camHUD, false);
    FlxG.cameras.add(camOther = new HudCamera(), false);
    camOther.bgColor = 0x00000000;
    FlxG.cameras.add(camHUD, false);
}*/