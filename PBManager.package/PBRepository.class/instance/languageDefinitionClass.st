accessing
languageDefinitionClass
	^ languageDefinitionClass ifNil: [ self ringEnvironment class ]