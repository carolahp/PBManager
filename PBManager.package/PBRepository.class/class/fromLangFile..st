instance creation
fromLangFile: aFileReference
	| aLangDefClass aPBRepository aPath langDefClassName |
	"read language definition from the file .lang, instantiate a PBLanguageDefinition"
	aPBRepository := STONJSON fromString: aFileReference readStream upToEnd.
	
	langDefClassName := aPBRepository languageDefinitionClass.
	aLangDefClass := Smalltalk classNamed: langDefClassName. 
	aLangDefClass ifNil: [self error: 'Language definition class "', langDefClassName, '" not found in the full Pharo image'].
	
	aPath := (aFileReference parent asPath / aPBRepository tonelPath) asPath.
	
	aPBRepository 
			tonelPath: aPath; "tonelPath in the file must be relative to the location of the file"
			languageDefinitionClass: aLangDefClass;
			languageFile: aFileReference. 
	
	^ aPBRepository 