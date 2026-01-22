import funkin.backend.utils.DiscordUtil;

function onMenuLoaded(name:String) {
	DiscordUtil.changePresenceSince("In the Menus", null);
}

function onDiscordPresenceUpdate(e) {
	var data = e.presence;

	if(data.button1Label == null)
		data.button1Label = "Codename Engine Discord";
	if(data.button1Url == null)
		data.button1Url = "https://discord.gg/2NTCdsQvx4";
	if(data.button2Label == null)
		data.button2Label = "Fan-build repository.";
	if(data.button2Url == null)
		data.button2Url = "https://github.com/HELLISH666-warframe/among-us-2-real";
}


function onPlayStateUpdate() {
	DiscordUtil.changePresenceAdvanced({
		if ((StringTools.startsWith(PlayState.SONG.meta.displayName, "Blood")) || (StringTools.startsWith(PlayState.SONG.meta.displayName, "Bleed"))){
		state:(PlayState.instance.paused ? "Paused - " : "") + PlayState.SONG.meta.displayName + " (" + PlayState.difficulty + ")",
        largeImageKey: "ruhoh",
		smallImageKey: PlayState.instance.getIconRPC()
		}
		else{		
			state:(PlayState.instance.paused ? "Paused - " : "") + PlayState.SONG.meta.displayName + " (" + PlayState.difficulty + ")",
			largeImageKey: "uhhhh",
			smallImageKey: PlayState.instance.getIconRPC()}
	});
}