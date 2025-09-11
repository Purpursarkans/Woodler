extends StaticBody3D

var startTimer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var fuel : float = 0

var fuer_per_sec = 0
var fuer_per_sec1 : bool = false


func _process(delta: float) -> void:
	%Statistics.text = "Wood: " + str(fuel)
	fuel += fuer_per_sec
	if fuel > 10 && !fuer_per_sec1:
		fuer_per_sec += 0.1 * delta
		fuer_per_sec1 = true

@onready var player = %Player
@onready var campfire_drop: AudioStreamPlayer3D = %CampfireDrop

func left_click():
	if player.have_log:
		fuel+=1
		#print_debug("campfire")
		player.have_log = false
		player.get_node("WoodLog").hide()
		campfire_drop.play()
