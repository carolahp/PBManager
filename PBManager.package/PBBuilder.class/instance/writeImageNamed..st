script-execution
writeImageNamed: aString
	| baseName fileReference aDictionary pbImage repositoryDirectory |
	baseName := self locationOfBootstrappedImages nextNameFor: aString extension: PBImageInDisk imageExtension.
	fileReference := (self locationOfBootstrappedImages / baseName) asFileReference.
	fileReference exists ifTrue: [ 
		self error: 'Can''t write the file! (this should never happen)'  ].
	self pbRepository pbBootstrapper writeImageIn: fileReference . 
	
	aDictionary := { 
		#name -> aString . 
		#bootstrapper -> self pbRepository pbBootstrapper class asString. 
		#metamodel -> self pbRepository ringEnvironment class asString.
		#scriptCommand -> './pharo'.
		#scriptArguments -> { fileReference pathString }. 
		#timestamp -> DateAndTime now asString } asDictionary.
	pbImage := PBImageInDisk fromImageFile: fileReference metadata: aDictionary.
	
	" Write repository: ring model + .lang file in disk "
	repositoryDirectory := self locationOfBootstrappedImages / fileReference basenameWithoutExtension.
	self pbRepository writeToDiskInDirectory: repositoryDirectory.
	
	self announceImageWritten: aString.
	^ pbImage