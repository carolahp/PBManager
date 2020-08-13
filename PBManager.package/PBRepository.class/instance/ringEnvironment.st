accessing
ringEnvironment
	^ ringEnvironment ifNil: [ ringEnvironment := self tonelFullRepository 
											asLanguageDefinitionWith: self packagesDefaultListFull 
											classes: nil 
											languageDefinition: self languageDefinitionClass 
											pbRepository: self ]
	