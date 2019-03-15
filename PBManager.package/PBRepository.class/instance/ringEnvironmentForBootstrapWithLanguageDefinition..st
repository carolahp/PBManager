API
ringEnvironmentForBootstrapWithLanguageDefinition: aLanguageDefinitionClass
	self halt.
	^ self tonelFullRepository 
		asRingEnvironmentWith: self packagesNamesInBootstrap 
		languageDefinition: aLanguageDefinitionClass