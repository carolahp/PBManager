updating
update
	| selectedImg |
	
	selectedImg := self listGeneratedImages selectedItem.
	selectedImg ifNil: [ 
		"for now we are working with a single generated image, so we select it by default"
		self listGeneratedImages listItems ifNotEmpty: [ 
			self listGeneratedImages setSelectedIndex: 1.
			selectedImg := self listGeneratedImages listItems at: 1 ].
	 ].
	self setEnabledStatusOfButtons: selectedImg isNotNil.
	self textInputImageName text: (selectedImg ifNil: [ '' ] ifNotNil: [selectedImg imageName])