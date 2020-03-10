updating
updateImagesLists
	| pbImages |
	pbImages := self pbBuilder pbImagesFrom: self pbBuilder locationOfBootstrappedImages.
	imagesList items: pbImages.
	"(imagesList selectedItem isNil and: [imagesList listItems size > 0]) ifTrue: [ imagesList setSelectedIndex: 1 ]"