extends FileDialog

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	mode=FileDialog.MODE_OPEN_FILE
	current_dir=get_parent().AUDIODIR
	connect("file_selected",get_parent(),"on_FileDialog_File_Selected")
	filters=PoolStringArray(["*.wav ; Wav files","*.ogg ; Ogg files"])

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
