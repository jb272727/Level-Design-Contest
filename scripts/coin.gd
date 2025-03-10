extends Area2D

@onready var coinsfx = $coinsfx

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_body_entered(body):
	coinsfx.play()
	self.visible = false
	$Timer.start(.25)


func _on_timer_timeout():
	queue_free()
