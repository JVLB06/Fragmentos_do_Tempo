extends Control

@onready var scroll = $ScrollContainer
@onready var label = $ScrollContainer/RichTextLabel

func _ready():
    scroll.scroll_vertical = 0
    await get_tree().create_timer(1.0).timeout

    var distance = label.size.y - scroll.size.y
    if distance > 0:
        create_tween().tween_property(scroll, "scroll_vertical", distance, 20.0)
