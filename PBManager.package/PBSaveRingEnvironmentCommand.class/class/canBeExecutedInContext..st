activation
canBeExecutedInContext: aToolContext

	^ aToolContext navigationEnvironment system isKindOf: ClyRing2Environment
