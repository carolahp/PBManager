testing
includesClassNamed: aName

	^ (self includesVariableNamed: aName)
		or: [ super includesClassNamed: aName ]