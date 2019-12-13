instance creation
fromImageFile: aFileReference
	^ self basicNew 
		imageFileReference: aFileReference; 
		initialize