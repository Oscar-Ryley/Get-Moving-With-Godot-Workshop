extends RichTextLabel

func _process(_delta):
	self.text = str("/", round(Global.total_platforms))
