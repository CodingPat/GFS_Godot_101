extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const AUDIODIR="res://audio"
var audioFile="res://art/House_In_a_Forest_Loop.ogg"

# Called when the node enters the scene tree for the first time.
func _ready():
	$btPlay.connect("pressed",self,"_on_btPlay_pressed")
	$btPlay.disabled=true
	$btStop.connect("pressed",self,"_on_btStop_pressed")
	$btStop.disabled=true
	$btSelect.connect("pressed",self,"_on_btSelect_pressed")
	

func _on_btPlay_pressed():
	$AudioPlayer.play(audioFile)
	
func _on_btStop_pressed():
	$AudioPlayer.stop()
	
func _on_btSelect_pressed():
	$FileDialog.popup()
	

func on_FileDialog_File_Selected(path):
	audioFile=path
	$Label.text=audioFile
	$btPlay.disabled=false
	$btStop.disabled=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
