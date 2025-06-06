extends Area2D

func _ready() -> void:
    body_entered.connect(_on_body_entered)

func _on_body_entered(body):
    if body is Player:
        get_tree().change_scene_to_file("res://lose.tscn")
