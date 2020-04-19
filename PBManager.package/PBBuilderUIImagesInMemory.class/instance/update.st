updating
update
	| selectedImg |
	"for now we are working with a single generated image, so we select it by default"
	self listGeneratedImages listItems ifNotEmpty: [ 
		self listGeneratedImages setSelectedIndex: 1. ].
	selectedImg := self listGeneratedImages selectedItem.
	self setEnabledStatusOfButtons: selectedImg isNotNil.
	self textInputImageName text: (selectedImg ifNil: [ '' ] ifNotNil: [selectedImg imageName])