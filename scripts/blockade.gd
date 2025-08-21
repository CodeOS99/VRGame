extends Node3D

func _ready() -> void:
	Globals.blockade = self

func block():
	$AnimationPlayer.play("block")

func unblock():
	$AnimationPlayer.play("unblock")
