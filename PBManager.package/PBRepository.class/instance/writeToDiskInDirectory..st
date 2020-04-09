exporting
writeToDiskInDirectory: aFileReference
	| dictionary jsonString langFileReference |
	" Writing model in Tonel format "
	aFileReference ensureCreateDirectory.
	self ringEnvironment writeIntoTonel: aFileReference.
	
	" Writing .lang file "
	langFileReference := aFileReference / self class langFileName, self class langFileExtension.
	dictionary := 
		{ #languageName -> self languageName.
		  #tonelPath -> '.'.
		  #languageDefinitionClass -> self languageDefinitionClass name } asDictionary.
	jsonString := 
		self class name asString,	
		(String streamContents: [ :stream |
			STON jsonWriter 
				on: stream; 
				nextPut: dictionary ]).
	
	langFileReference writeStreamDo: [ :stream | stream nextPutAll: jsonString ].