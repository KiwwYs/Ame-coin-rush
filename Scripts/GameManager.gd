extends Node3D

# ---------- VARIABLES ---------- #

var score = 0

# ---------- FUNCTIONS ---------- #
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _process(_delta):
	show_mouse_cursor()

# Making Cursor visible using "mouse_visible" key which is assigned in Project Settings > Input Map
func show_mouse_cursor():
	if Input.is_action_just_pressed("mouse_visible"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func add_score():
	score += 1
	if score == 10:
		show_win()

func show_win():
	get_node("/root/DemoScene/UserInterface/Win").visible = true
	
	
func _on_button_pressed():
	get_node("/root/DemoScene/UserInterface/Start").visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
