instance creation
fromLangFile: aFileReference
	| aPBRepository |
	"read language definition from the file .lang, instantiate a PBLanguageDefinition"
	aPBRepository := STONJSON fromString: aFileReference readStream upToEnd.
	"tonelPath in the file must be relative to the location of the file"
	aPBRepository tonelPath: (aFileReference containingDirectory asPath / aPBRepository tonelPath) asPath.
	^ aPBRepository 