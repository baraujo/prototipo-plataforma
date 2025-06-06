extends Area2D

func _ready() -> void:
    pass

func _on_body_entered(body: Node2D):
    if body is Player:
        body.collect_coin() 
    queue_free()
