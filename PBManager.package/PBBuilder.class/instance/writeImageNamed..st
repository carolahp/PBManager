image-functions
writeImageNamed: aString
	| imageFileReference metadataFileReference aDictionary |
	
	imageFileReference := (self locationOfBootstrappedImages pathString, '/', aString, '.', PBImageInDisk imageExtension) asFileReference.
	self pbRepository pbBootstrapper builder writeImageIn: imageFileReference . 
	
	aDictionary := { 
		#name -> aString . 
		#bootstrapper -> self pbRepository pbBootstrapper class asString. 
		#scriptCommand -> './pharo'.
		#scriptArguments -> { imageFileReference pathString }. 
		#timestamp -> DateAndTime now asString } asDictionary.
	
	^ PBImageInDisk fromImageFile: imageFileReference metadata: aDictionary