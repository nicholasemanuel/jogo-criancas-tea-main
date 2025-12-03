extends Control

@onready var coins_counter: Label = $container/coins_container/coins_counter as Label
@onready var life_counter: Label = $container2/life_container2/life_counter as Label
@onready var remote_transform := $remote as RemoteTransform2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	coins_counter.text = str("%02d" % Globals.coins)
	life_counter.text = str("%02d" % Globals.player_life)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	coins_counter.text = str("%02d" % Globals.coins)
