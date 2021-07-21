writing files
ensureLangDefinitionFile
	self languageFile exists 
		ifTrue: [ 
			(self confirm: 'the file ', languageFile asString ,' exists. Do you want to override it?') 
				ifTrue: [ self writeLangDefinitionFile ] ].
	^ self languageFile