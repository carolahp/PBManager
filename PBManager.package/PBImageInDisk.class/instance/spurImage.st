spur image
spurImage
	^ spurImage
		ifNil: [ spurImage := EP2SpurImage onFile: imageFileReference ]