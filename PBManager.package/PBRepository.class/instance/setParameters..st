accessing
setParameters: aDictionary
	| showUI |
	repositoryPath := aDictionary at: #path ifAbsent: [ Error signal: 'Repository path is missing' ].
	showUI := aDictionary at: #showUI ifAbsent: [ false ].
	packagesListFull := aDictionary at: #packagesListFull ifAbsent: [ nil ].
	packagesListBS   := aDictionary at: #packagesListBS   ifAbsent: [ #() ].
	
	showUI ifTrue: [ self ui: (PBBuilderUI withRepository: self) ]