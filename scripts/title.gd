extends Node2D

func _process(delta: float) -> void:
    if Input.is_action_just_pressed("ui_accept"):
        get_tree().change_scene_to_file("res://scenes/gameplay.tscn")
