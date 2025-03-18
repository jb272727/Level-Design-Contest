extends Area2D

@onready var coinsfx = $coinsfx
var player
var player_sprite
var player_text

# Called when the node enters the scene tree for the first time.
func _ready():
	player = get_tree().current_scene.find_child("Player", true, false)
	player_sprite = player.find_child("Player Sprite")
	player_text = player.find_child("Player Text")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_body_entered(body):
	coinsfx.play()
	self.visible = false
	player.coins += 1
	$Timer.start(.25)


func _on_timer_timeout():
	queue_free()
