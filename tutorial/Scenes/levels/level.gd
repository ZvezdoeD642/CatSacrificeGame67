extends Node2D


func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	if $void.body_entered:
		$Player.position = Vector2(-471, 273)
