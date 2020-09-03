updating
setEnabledStatusOfButtons: aBoolean
	{self buttonDeleteImage.
	self buttonInspectImage} do: [ :widget | widget enabled: aBoolean ]