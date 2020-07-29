*PBBuilder-LanguageDefinition
asRingDefinitionIn: aPBLanguageDefinition 
	
	^ aPBLanguageDefinition class classDefinitionClass new 
		mcDefinition: self;
		yourself