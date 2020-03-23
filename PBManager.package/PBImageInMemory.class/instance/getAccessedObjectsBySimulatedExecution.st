accessing
getAccessedObjectsBySimulatedExecution
	| environment behaviors methods |
	environment := self imageBuilder systemDefinition.
	behaviors := environment ask behaviors select: [ :beh | beh isMarkedAsAccessed ].
	methods := (behaviors flatCollect: #localMethods) select: [ :meth | meth isMarkedAsAccessed ].
	^ behaviors, methods