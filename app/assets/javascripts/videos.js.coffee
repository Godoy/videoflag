# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

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
		$("#flag_seconds").val(player.getCurrentTime())
		$("#modalFlagLabel").html "Flag at "+player.getCurrentTime().toHHMMSS()
		

	$("#modalFlag").on "hidden", ->
		player.playVideo()
		
	
window.onYouTubePlayerAPIReady = -> 
	player = new YT.Player("player", height: "315", width: "560", videoId: $("#player").attr("data-id"))
	false