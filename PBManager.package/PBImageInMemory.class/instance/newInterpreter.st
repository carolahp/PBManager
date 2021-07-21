code execution
newInterpreter
 	| propertyName |
	propertyName := #accessed.
	self systemDefinition removeFromAllElementsPropertyNamed: propertyName.
	self systemDefinition objectAccessedPropertyName: propertyName.
	^ self evaluator interpreter