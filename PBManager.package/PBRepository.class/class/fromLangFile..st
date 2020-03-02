instance creation
fromLangFile: aFileReference
	| aLangDefClass aPBRepository aPath |
	"read language definition from the file .lang, instantiate a PBLanguageDefinition"
	aPBRepository := STONJSON fromString: aFileReference readStream upToEnd.
		
	aLangDefClass := (Smalltalk classNamed: aPBRepository languageDefinitionClass).
	aPath := (aFileReference parent asPath / aPBRepository tonelPath) asPath.
	
	aPBRepository 
			tonelPath: aPath; "tonelPath in the file must be relative to the location of the file"
			languageDefinitionClass: aLangDefClass.
	
	^ aPBRepository 