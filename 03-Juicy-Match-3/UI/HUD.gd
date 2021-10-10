extends Control

func _ready():
	var _changed = Global.connect("changed",self,"_on_score_changed")
	_on_score_changed()

func _on_score_changed():
	$Score.text = str(Global.score)	

func _on_score_40():
	if $Score.text >= 40:
		var _target = get_tree().change_scene("res://level 2.tscn")
