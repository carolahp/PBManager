exporting
fullCopy
	| tempDirectory tonel newLanguageDefinition |
	tempDirectory := (FileSystem workingDirectory / 'temp') ensureCreateDirectory.
	self writeIntoTonel: tempDirectory.
	tonel := TonelRepository new directory: tempDirectory.
	newLanguageDefinition := tonel asRingEnvironmentWith: tonel allFileNames languageDefinition: self class.
	newLanguageDefinition copyPropertiesFrom: self.
	tempDirectory deleteAll.
	^ newLanguageDefinition