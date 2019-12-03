bootstrapping
ringEnvironmentForBootstrapWithLanguageDefinition: aLanguageDefinitionClass packages: packagesList classes: classesList 
self deprecated: ''.
	^ self tonelFullRepository 
		asRingEnvironmentWith: packagesList  
		classes: classesList
		languageDefinition: aLanguageDefinitionClass