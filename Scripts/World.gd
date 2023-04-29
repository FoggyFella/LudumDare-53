extends Node2D

@onready var up_message = $UI/UpMessage
@onready var down_message = $UI/DownMessage
@onready var ladder_controls = $UI/LadderControls
@onready var grid = $Bg/Grid

func _ready():
	up_message.scale = Vector2(1,0)
	down_message.scale = Vector2(1,0)
	ladder_controls.scale = Vector2(0,1)
	grid.scale = Vector2(1,0)

func show_up_message(text):
	up_message.text = text
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(up_message,"scale",Vector2(1,1),0.15)

func hide_up_message():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(up_message,"scale",Vector2(1,0),0.15)

func show_down_message(text,color="ffffff"):
	down_message.text = text
	down_message.modulate = color
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(down_message,"scale",Vector2(1,1),0.15)

func hide_down_message():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(down_message,"scale",Vector2(1,0),0.15)

func popup_down_message(text,color="ffffff"):
	down_message.text = text
	down_message.modulate = Color(color)
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(down_message,"scale",Vector2(1,1),0.15)
	tween.tween_interval(1.0)
	tween.tween_property(down_message,"scale",Vector2(1,0),0.15)

func show_controls():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(ladder_controls,"scale",Vector2(1,1),0.2)

func hide_controls():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(ladder_controls,"scale",Vector2(0,1),0.2)

func show_grid():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(grid,"scale",Vector2(1,1),0.25)

func hide_grid():
	var tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	tween.tween_property(grid,"scale",Vector2(1,0),0.25)
