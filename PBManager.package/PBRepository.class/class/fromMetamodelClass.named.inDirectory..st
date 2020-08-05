instance creation
fromMetamodelClass: aClass named: aString inDirectory: aDirectoryReference 
	| aPBRepository path |
	"instantiate aClass and create a repository containing it"
	
	path := (aDirectoryReference / aString) ensureCreateDirectory.
	(path hasChildren) 
		ifTrue: [
			(self confirm: path asString , ' exists. Do you want to override it?') 
				ifFalse: [^nil]].
	
	path deleteAllChildren.
	
	aPBRepository := self new 
		languageDefinitionClass: aClass;
		languageName: aString;
		tonelPath: path;
		ensureLangDefinitionFile;
		yourself.
	^ aPBRepository 