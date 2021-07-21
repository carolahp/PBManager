*PBManager-LanguageDefinition
addError: aString 
	| errors errorsTag |
	errorsTag := self parent class errorsTag.
	errors := self propertyNamed: errorsTag.
	errors ifNil: [ 
		errors := #() asOrderedCollection. 
		self propertyNamed: errorsTag put: errors ].
	errors add: aString.	
	^ self propertyNamed: errorsTag