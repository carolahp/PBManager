*PBBuilder-LanguageDefinition
classNamed: aString 
	| association |
	association := self bindingOf: aString.
	^ association ifNotNil: [ association value ]
		ifNil: [ self error: 'Class "', aString, '" not found' ] 