extends RichTextLabel

func _process(_delta):
	if Global.platforms == Global.total_platforms:
		self.text = str("Yay!")
