*PBBuilder-LanguageDefinition
globalVariableNamed: aString 
	self globalVariablesDo: [ :g | (g name = aString) ifTrue: [ ^ g ] ].
	^ nil