*PBBuilder-LanguageDefinition
getErrors
	| errorsTag |
	errorsTag := self parent class errorsTag.
	^ (self propertyNamed: errorsTag) ifNil: [ #() asOrderedCollection ]