evaluating
newFromBlock: aBlock for: aLanguageModel
	^ PBNonReflectiveInstruction new 
		languageDefinition: aLanguageModel;
		block: aBlock;
		yourself