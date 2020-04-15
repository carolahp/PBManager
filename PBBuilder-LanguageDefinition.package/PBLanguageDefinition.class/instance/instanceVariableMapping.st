as yet unclassified
instanceVariableMapping
	^ instanceVariableMapping ifNil: [ instanceVariableMapping := PBInstanceVariableMappingGeneric on: self ]