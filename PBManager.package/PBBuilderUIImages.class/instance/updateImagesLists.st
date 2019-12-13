updating
updateImagesLists
	imagesList items: (self pbBuilder pbImagesFrom: self pbBuilder defaultLocationOfBootstrappedImages).
	(imagesList selectedItem isNil and: [imagesList listItems size > 0]) ifTrue: [ imagesList setSelectedIndex: 1]