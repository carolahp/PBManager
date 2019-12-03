*PBBuilder-LanguageDefinition
asLanguageDefinitionWith: packageNames classes: classesNames languageDefinition: aClass pbRepository: aPBRepository
	^( self asRingEnvironmentWith: packageNames classes: classesNames  languageDefinition: aClass ) 		pbRepository: aPBRepository.