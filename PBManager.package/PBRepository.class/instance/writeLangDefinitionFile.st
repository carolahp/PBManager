writing files
writeLangDefinitionFile
	| langFile |
	langFile := (self tonelPath / (self class langFileName ,'.', self class langFileExtension )) ensureCreateFile. 
	langFile writeStreamDo: [ :fs |
				fs nextPutAll: self class name.
				STONJSON 
					put: { 
						#languageDefinitionClass -> self languageDefinitionClass name .
						#languageName -> self languageName.
						#tonelPath -> '.' } asDictionary 
					onStream: fs].