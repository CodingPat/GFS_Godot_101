extends Node2D

###############################################################
### programme démo 
## basé sur le tutoriel de gamefromscratch.com (GDscript 101)
##
## affiche des rectangles aux positions, dimensions et couleurs aléatoires
################################################################

# Variables membres

#dimensions minimales et maximales des rectangles
var box_min_width=10
var box_max_width=200
var box_min_height=10
var box_max_height=200

#liste de tous les rectangles
var boxes=[]
#liste des couleurs utilisables
var colors=[Color.blue,Color.cyan,Color.green,Color.yellow,Color.red,Color.purple]
#nombre de rectangles
var nr_boxes=80
#largeur et hauteur de la fenêtre, variables qui seront initialisées lorsque la fenêtre sera créée
var width_window
var height_window


# fonction appelée au démarrage
func _ready():
	randomize()
	width_window=get_viewport().get_visible_rect().size.x
	height_window=get_viewport().get_visible_rect().size.y

	for i in nr_boxes:
		var x=rand_range(0,width_window)
		var y=rand_range(0,height_window)
		var width=rand_range(box_min_width,box_max_width)
		var height=rand_range(box_min_height,box_max_height)
		var color=colors[rand_range(0,colors.size())]
		
		boxes.append({"rect":Rect2(Vector2(x,y),Vector2(width,height)),"color":color})
	
	
#fonction appelée à chaque fois que la fenêtre est redessinée
func _draw():
	for box in boxes:
		draw_rect(box.rect,box.color)
		
		
	
