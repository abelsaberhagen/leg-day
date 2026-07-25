extends RigidBody2D

var mouseEntered;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mouseEntered = false; # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	pass

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if mouseEntered:
			global_position = get_global_mouse_position();
			linear_velocity = Vector2.ZERO;
	


func _on_mouse_entered() -> void:
	mouseEntered = true;
	

func _on_mouse_exited() -> void:
	mouseEntered = false;
