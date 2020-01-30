initialization
initializePresenter
	imagesList whenSelectionChanged: [
		self pbBuilder selectedImage: (imagesList listElementAt: imagesList selectedIndex).].
	
	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self pbBuilder inspectSelectedImage
	 ].

	buttonWriteGenImage whenActionPerformedDo:  
	[ :event | self pbBuilder writeImageNamed: self textImageName text asString.
		self updateImagesLists.
		self buttonWriteGenImage disable.
	 ].
	
	buttonOpenContainingFolder whenActionPerformedDo:
	[ :event |
		self pbBuilder runBashScript: 'open' arguments: { self pbBuilder defaultLocationOfBootstrappedImages pathString }.
	 ].
	buttonDeleteImage  whenActionPerformedDo:
	[ :event | | selectedImage |
		selectedImage := self pbBuilder selectedImage.
		self pbBuilder runAndWaitBashScript: 'rm' arguments: (selectedImage allFileReferences collect: [ :fr | fr pathString ]).
		self updateImagesLists
	 ].