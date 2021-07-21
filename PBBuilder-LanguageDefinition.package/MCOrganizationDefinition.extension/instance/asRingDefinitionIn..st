*PBBuilder-LanguageDefinition
asRingDefinitionIn: aPBLanguageDefinition 
	^ aPBLanguageDefinition class organizationClass new 
		mcDefinition: self;
		yourself