extends Area2D

@onready var pinjointfeet1 : PinJoint2D = $"../../Narm/PinJointFeet1"
@onready var pinjointfeet2 : PinJoint2D = $"../../Narm/PinJointFeet2"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "legsegment8":
		pinjointfeet1.global_position = global_position
		pinjointfeet1.node_b = get_parent().get_path()
	elif body.name == "legsegment6":
		pinjointfeet2.global_position = global_position
		pinjointfeet2.node_b = get_parent().get_path()
	print("body entered")
		
	
