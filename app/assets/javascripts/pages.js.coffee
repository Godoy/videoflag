tag = document.createElement("script")
tag.src = "//www.youtube.com/player_api"

firstScriptTag = document.getElementsByTagName("script")[0]
firstScriptTag.parentNode.insertBefore tag, firstScriptTag

player = null


$ ->
	jQuery(".seek-to").click ->
		player.seekTo $(this).attr('data-time')
		player.playVideo()
		false



	$("[data-toggle=popover]").popover({trigger:'hover'});


	$("#pause-flag").click ->
		player.pauseVideo()
		player.getCurrentTime()
		console.log player.getCurrentTime().toHHMMSS()

	$("#modalFlag").on "hidden", ->
		player.playVideo()
		
	
window.onYouTubePlayerAPIReady = -> 
	player = new YT.Player("player", height: "281", width: "500", videoId: $("#player").attr("data-id"))
	false
