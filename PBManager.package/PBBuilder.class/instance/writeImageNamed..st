image-functions
writeImageNamed: aString
	| imageFileReference aDictionary pbImage |
	imageFileReference := (self locationOfBootstrappedImages pathString, '/', aString, '.', PBImageInDisk imageExtension) asFileReference.
	imageFileReference exists ifTrue: [ 
		"^ nil" ].
	self pbRepository pbBootstrapper builder writeImageIn: imageFileReference . 
	
	aDictionary := { 
		#name -> aString . 
		#bootstrapper -> self pbRepository pbBootstrapper class asString. 
		#scriptCommand -> './pharo'.
		#scriptArguments -> { imageFileReference pathString }. 
		#timestamp -> DateAndTime now asString } asDictionary.
	pbImage := PBImageInDisk fromImageFile: imageFileReference metadata: aDictionary.
	self announceImageWritten: aString.
	^ pbImage