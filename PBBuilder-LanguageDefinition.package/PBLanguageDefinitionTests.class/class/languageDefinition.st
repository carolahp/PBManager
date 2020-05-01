accessing
languageDefinition 
	^ language ifNil: [ language := PBLanguageDefinitionPharoCandle default ]