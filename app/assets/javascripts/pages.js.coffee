tag = document.createElement("script")
tag.src = "//www.youtube.com/player_api"

firstScriptTag = document.getElementsByTagName("script")[0]
firstScriptTag.parentNode.insertBefore tag, firstScriptTag

player = null

$ ->
	jQuery("#test").click ->
		console.log player
		player.seekTo 25
		false

window.onYouTubePlayerAPIReady = 
	-> 
		player = new YT.Player("player", height: "390", width: "640", videoId: "u1zgFlCw8Aw")
		false