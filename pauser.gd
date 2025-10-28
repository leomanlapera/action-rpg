extends Node

@onready var pause_audio_stream_player: AudioStreamPlayer = $PauseAudioStreamPlayer
@onready var unpaused_audio_stream_player: AudioStreamPlayer = $UnpausedAudioStreamPlayer

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		var is_paused = get_tree().paused
		if is_paused: pause_audio_stream_player.play()
		else: unpaused_audio_stream_player.play()
		get_tree().paused = not is_paused
