evaluating
newFromString: aString for: aLanguageModel
	^ PBReflectiveInstruction new
		languageDefinition: aLanguageModel;
		code: aString;
		yourself