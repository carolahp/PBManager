updating
reset
	self listGeneratedImages setIndex: 0.
	self listGeneratedImages items: #().
	self setEnabledStatusOfButtons: false.
	self textInputImageName text: ''.
	self listAccessedObjects items: #().
	self listCodeVariables items: #().