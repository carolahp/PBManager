running
initializeImage
	| process association |

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
	PBStepFinishedSignal log: 'image initialized'.
