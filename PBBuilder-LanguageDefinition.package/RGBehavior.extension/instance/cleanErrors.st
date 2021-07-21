*PBBuilder-LanguageDefinition
cleanErrors
	| errorsTag |
	errorsTag := self parent class errorsTag.
	self propertyNamed: errorsTag put: nil.
	(self propertyNamed: errorsTag) ifNotNil: [ self error: 'Error cleaning RGBehavior errors' ]