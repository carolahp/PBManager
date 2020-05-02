*PBBuilder-LanguageDefinition
classNamed: aString 
	| association |
	association := self bindingOf: aString.
	^ association 
		ifNotNil: [ association value ]
		ifNil: [ PBClassDefinitionNotFound signal: 'class "', aString, '" not found' ] 