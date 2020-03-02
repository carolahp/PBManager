image-functions
writeImageNamed: aString
	| imageFileReference metadataFileReference aDictionary |
	
	imageFileReference := (self locationOfBootstrappedImages pathString, '/', aString, '.', PBImage imageExtension) asFileReference.
	self pbRepository pbBootstrapper builder writeImageIn: imageFileReference . 
	
	aDictionary := { 
		#name -> aString . 
		#bootstrapper -> self pbRepository pbBootstrapper class asString. 
		#scriptCommand -> './pharo'.
		#scriptArguments -> { imageFileReference pathString }. 
		#timestamp -> DateAndTime now asString } asDictionary.
	
	^ PBImage fromImageFile: imageFileReference metadata: aDictionary