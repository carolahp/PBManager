initialization
initializePresenter
	imagesList whenSelectionChanged: [
		self pbBuilder selectedImage: imagesList selectedItem ].
	
	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self pbBuilder inspectSelectedImage
	 ].

	buttonWriteGenImage whenActionPerformedDo:  
	[ :event | 
		self pbBuilder writeImageNamed: self textImageName text asString.
		self updateImagesLists.
		self buttonWriteGenImage disable.
		self halt: 'remove image from images in memory list'
		
	 ].
	
	buttonOpenContainingFolder whenActionPerformedDo:
	[ :event |
		self pbBuilder runBashScript: 'open' arguments: { self pbBuilder locationOfBootstrappedImages pathString }.
	 ].
	buttonDeleteImage  whenActionPerformedDo:
	[ :event | | selectedImage |
		selectedImage := self pbBuilder selectedImage.
		self pbBuilder runAndWaitBashScript: 'rm' arguments: (selectedImage allFileReferences collect: [ :fr | fr pathString ] ).
		self updateImagesLists
	 ].