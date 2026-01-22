//function postCreate() PauseSubState.script = "data/states/PauseSubState";
function onGamePause(event) {
    event.cancel();
    persistentUpdate = false;
    persistentDraw = true;
    paused = true;
        
    openSubState(new ModSubState("V3/PauseSubState"));
}
