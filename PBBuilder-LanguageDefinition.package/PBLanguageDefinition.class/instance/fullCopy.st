exporting
fullCopy
	| tempDirectory tonel newLanguageDefinition |
	tempDirectory := (FileSystem workingDirectory / 'temp') ensureCreateDirectory.
	self exportAsTonelRepository: tempDirectory.
	tonel := TonelRepository new directory: tempDirectory.
	newLanguageDefinition := tonel asRingEnvironmentWith: tonel allFileNames languageDefinition: self class.
	"We copy the property used to mark the methods we accessed during the bootstrap"
	newLanguageDefinition copyForAllElementsPropertyNamed: self objectAccessedPropertyName From: self.
	tempDirectory deleteAll.
	self halt.
	^ newLanguageDefinition