code execution
newInterpreter
 	| propertyName |
	propertyName := #accessedBySimulatedEvaluation.
	self systemDefinition removeFromAllElementsPropertyNamed: propertyName.
	self systemDefinition objectAccessedPropertyName: propertyName.
	^ self evaluator interpreter