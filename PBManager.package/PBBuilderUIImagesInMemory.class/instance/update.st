updating
update
	| selectedImg |
	selectedImg := self listGeneratedImages selectedItem.
	self setEnabledStatusOfButtons: selectedImg isNotNil.
	self textInputImageName text: (selectedImg ifNil: [ '' ] ifNotNil: [selectedImg imageName])