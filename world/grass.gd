extends Node2D

var GRASS_EFFECT = preload("uid://ce5p53poxd7b4")

@onready var hurtbox: Hurtbox = $Hurtbox

func _ready() -> void:
	hurtbox.hurt.connect(_on_hurt)

func _on_hurt(other_hitbox: Hitbox) -> void:
	var grass_effect_instance = GRASS_EFFECT.instantiate()
	get_tree().current_scene.add_child(grass_effect_instance)
	grass_effect_instance.global_position = global_position
	queue_free()
