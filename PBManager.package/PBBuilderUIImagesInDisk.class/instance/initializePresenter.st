initialization
initializePresenter
	imagesList whenSelectionChanged: [
		self pbBuilder selectedImage: imagesList selectedItem ].
	
	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self pbBuilder inspectSelectedImage
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
	labelTitle := self newLabel.
	labelTitle label: 'Images saved to disk'