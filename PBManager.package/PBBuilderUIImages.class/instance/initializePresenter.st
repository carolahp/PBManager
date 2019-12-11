initialization
initializePresenter
		
	imagesList whenSelectionChanged: [
		self pbBuilder selectedImage: (imagesList listElementAt: imagesList selectedIndex).].

	buttonInspectImage whenActionPerformedDo:  
	[ :event |
		self pbBuilder inspectSelectedImage
	 ].

	buttonWriteGenImage whenActionPerformedDo:  
	[ :event |
		self pbRepository imageFileName: self textImageName text.
		self pbRepository pbBootstrapper builder writeImage.
		self updateImagesLists.
		self buttonWriteGenImage disable.
	 ].