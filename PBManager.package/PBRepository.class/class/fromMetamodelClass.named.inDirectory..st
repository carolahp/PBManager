instance creation
fromMetamodelClass: aClass named: aString inDirectory: aDirectoryReference 
	| aPBRepository path |
	"instantiate aClass and create a repository containing it"
	self halt.
	path := (aDirectoryReference / aString) ensureCreateDirectory.
	aPBRepository := self new 
		languageDefinitionClass: aClass;
		languageName: aString;
		tonelPath: path;
		yourself.
	^ aPBRepository 