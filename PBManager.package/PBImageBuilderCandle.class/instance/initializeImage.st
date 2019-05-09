running
initializeImage
	| process pcSystem association |

	self flag: 'should migrate this method'.
	self checkpoint: 'image_initialization'.
	
	self initializeSpecialObjectArray.
	
	self bootstrapInterpreter
		evaluateCode:  '
	Processor := PCProcessorScheduler basicNew.
	Processor initProcessLists.'
		withTemps: #().

	
	
"	objectSpace backend processorAssociation: (self bootstrapInterpreter evaluateCode: 'Smalltalk globals associationAt: #Processor.').
	
	objectSpace processor: (objectSpace globalNamed: #Processor) asSchedulerMirror.
"	"objectSpace characterTable toInternalCharacterTable."
	association := self newAssociation.
	association instanceVariableAtIndex: 1 put: self objectSpace nilObject.
	association instanceVariableAtIndex: 2 put: (self bootstrapEnvironment at: #Processor).
	
	objectSpace backend processorAssociation: association .
	
	process := objectSpace createProcessWithPriority: 3 doing: 'PCSystem start' withTemps: #().
 	objectSpace installAsActiveProcess: process withProcessor: (self bootstrapEnvironment at: #Processor).
	
	self bootstrapInterpreter
		evaluateCode: 'PCSystem specialObjectsArray: newArray.'
		withTemps: { 'newArray' -> objectSpace backend specialObjectsArray }.
	
	self followForwardingPointers.

"	espellBackend simulator stackPages pages do: [ :page | espellBackend simulator stackPages freeStackPage: page ].
	espellBackend simulator freeUntracedStackPages.	
"
[[ espellBackend objectMemory flushNewSpace. ]
		on: Halt
		do: [:ex|
			(#(#fullGC #compactImage  #doScavenge:) includes: ex signalerContext sender selector)
				ifTrue: [ex resume]
				ifFalse: [ex pass]]] on: AssertionFailure do: [ :e |
				((e signalerContext sender method selector == #assert:)
					and: [ e signalerContext sender sender method selector = #mapStackPages ])
						ifTrue: [ e resume ]
						ifFalse: [ e pass ]] .

	self freeForwarders.
	self compactImage.
	self reportSizes.

	self writeSnapshot: ('bootstrap.image' asFileReference) fullName ofTransformedImage: espellBackend simulator objectMemory headerFlags: 0 screenSize: 0.
		PBStepFinishedSignal log: 'Installed extension methods'.
