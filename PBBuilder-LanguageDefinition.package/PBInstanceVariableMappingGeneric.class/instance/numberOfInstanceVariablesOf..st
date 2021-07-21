private-utils
numberOfInstanceVariablesOf: aClassName 
	^ (environment classNamed: aClassName) allSlots size