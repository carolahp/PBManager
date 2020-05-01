accessing
selectedImage: aBootstrappedImage
	bootstrappedImage := aBootstrappedImage.
	self announcer announce: (PBSelectedImageInDiskChanged new image: bootstrappedImage)