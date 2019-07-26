API
ringEnvironmentForBootstrapWithLanguageDefinition: aLanguageDefinitionClass packages: aPackagesNameList
	^ self tonelFullRepository 
		asRingEnvironmentWith: aPackagesNameList  
		languageDefinition: aLanguageDefinitionClass