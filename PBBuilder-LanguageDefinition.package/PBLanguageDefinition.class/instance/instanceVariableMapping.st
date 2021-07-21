instVars-mapping
instanceVariableMapping
	^ instanceVariableMapping ifNil: [ instanceVariableMapping := PBInstanceVariableMappingGeneric on: self ]