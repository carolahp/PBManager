stubs
createBehaviorFromDefinition: aRFiDefinition

	| newBehavior code |
	(self isFullyLoadedClassNamed: aRFiDefinition name) ifTrue: [ ^ self ].
	aRFiDefinition isBehavior ifTrue: [
		"We ensure a class with that name already exists"
		environment at: aRFiDefinition name ifAbsent: [ self createStubForClassNamed: aRFiDefinition name ]].
	
	newBehavior := self executeDefinitionFor: aRFiDefinition.
	code := 	'theBehavior methodDictionary: ({classMethodDictionary} new: capacity)' format: {'classMethodDictionary'-> (systemDefinition classWithRole: #MethodDictionary) name } asDictionary.
		
	"Once the class is created we set a new method dictionary with a size that will make it grow less afterwards"

	builder bootstrapInterpreter 
		evaluateCode: code
		withTemps: { 
			'capacity' -> (aRFiDefinition methods size asLiteralInObjectSpace: builder objectSpace).
			'theBehavior' -> newBehavior }.
	
	aRFiDefinition isBehavior ifTrue: [ 
		self registerClass: newBehavior asClassMirror named: aRFiDefinition name fullyLoaded: true.
	] ifFalse: [
		self registerTrait: newBehavior asTraitMirror named: aRFiDefinition name fullyLoaded: true.
	]