extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#var player=AudioStreamPlayer.new()
var player=AudioStreamPlayer.new()
var audioFile="res://art/House_In_a_Forest_Loop.ogg"

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(player)
	
	
func play(audioFile):
	print("playing : "+audioFile)
	player.stream=load(audioFile)
	player.play()
	
func stop():
	print("stop playing ...")
	player.stop()

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
