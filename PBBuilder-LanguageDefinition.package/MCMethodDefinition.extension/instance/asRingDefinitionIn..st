*PBBuilder-LanguageDefinition
asRingDefinitionIn: aPBLanguageDefinition
	
	^ aPBLanguageDefinition class methodClass new 
		mcDefinition: self;
		yourself 
		