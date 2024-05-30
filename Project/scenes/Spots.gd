extends Node2D

var Game_end = false

# warning-ignore:unused_argument
func _process(delta):
	check_end()
	pass

func check_end():
	if Game_end == false:
		var spots = $Spots.get_child_count()
		for i in $Spot.get_children():
			if i.in_spot:
				spots -=1
		
		
		if spots == 0:
			$AcceptDialog.popup()
			Game_end = true
		
		
		pass
