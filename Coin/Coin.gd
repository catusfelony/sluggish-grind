extends Node2D
class_name Coin

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_CoinArea_body_entered(body):
    if body is Player:
        body.update_coin_count(1)
        queue_free()