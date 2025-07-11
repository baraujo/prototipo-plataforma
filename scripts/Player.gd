extends CharacterBody2D
class_name Player

@export var SPEED = 300.0
@export var JUMP_VELOCITY = -800.0

var coin_count: int = 0

func _physics_process(delta: float) -> void:
    # Add the gravity.
    if not is_on_floor():
        velocity += get_gravity() * delta

    # Handle jump.
    if Input.is_action_just_pressed("ui_accept") and is_on_floor():
        velocity.y = JUMP_VELOCITY

    # Get the input direction and handle the movement/deceleration.
    # As good practice, you should replace UI actions with custom gameplay actions.
    var direction := Input.get_axis("ui_left", "ui_right")
    if direction:
        velocity.x = direction * SPEED
    else:
        velocity.x = move_toward(velocity.x, 0, SPEED)

    move_and_slide()

func collect_coin():
    print("Coin collected!")
    coin_count += 1
    if coin_count == 4:
        print("Collected all coins!")
        get_tree().change_scene_to_file("res://scenes/win.tscn")
