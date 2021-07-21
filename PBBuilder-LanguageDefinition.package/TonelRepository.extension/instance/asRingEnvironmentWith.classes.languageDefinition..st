*PBBuilder-LanguageDefinition
asRingEnvironmentWith: packageNames classes: classesNames languageDefinition: aClass 
	
	| aRG2Environment packages |
	"If no package is specified, we load all packages saved in the directory"
	packages := packageNames
		 ifNil: [ self allFileNames ]
		 ifNotNil: [packageNames].
	
	aRG2Environment := aClass new.
	aRG2Environment loadTonelRepository: self packagesNames: packages classesNames: classesNames.
	^ aRG2Environment 