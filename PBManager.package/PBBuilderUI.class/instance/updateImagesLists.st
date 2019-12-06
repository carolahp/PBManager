refreshing
updateImagesLists
	self flag: 'give another class the responsibility of reading the bootstrapped images'.
	imagesList  items: ((self directoryForBootstrappedImages entries select: [ :e | ( (e basename findString: 'bootstrap') > 0 ) and: [ (e basename findString: '.image') > 0 ] ]) asOrderedCollection sort: [:a :b | a name > b name]).
	(imagesList selectedItem isNil and: [imagesList listItems size > 0]) ifTrue: [ imagesList setSelectedIndex: 1]. 