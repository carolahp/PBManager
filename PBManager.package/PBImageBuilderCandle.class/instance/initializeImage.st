running
initializeImage
	| processor process association |

	self flag: 'should migrate this method'.
	self checkpoint: 'image_initialization'.
	
	self initializeSpecialObjectArray.
	
	processor := self bootstrapInterpreter
		evaluateCode:  '
			Processor := theProcessorScheduler basicNew
				initProcessLists ;
				yourself'
		withTemps: { 'theProcessorScheduler' -> (self classWithRole: #ProcessorScheduler) mirror }.

	self bootstrapEnvironment at: #Processor put: processor.
	self bootstrapInterpreter evaluateCode: 'Smalltalk globals at: #Processor put: theProcessor' withTemps: { 'theProcessor' -> processor }.
	
"	objectSpace backend processorAssociation: (self bootstrapInterpreter evaluateCode: 'Smalltalk globals associationAt: #Processor.').
	
	objectSpace processor: (objectSpace globalNamed: #Processor) asSchedulerMirror.
"	"objectSpace characterTable toInternalCharacterTable."
	association := self newAssociation.
	association instanceVariableAtIndex: 1 put: self objectSpace nilObject.
	association instanceVariableAtIndex: 2 put: (self bootstrapEnvironment at: #Processor).
	
	objectSpace backend processorAssociation: association .
	process := objectSpace createProcessWithPriority: 3 doing: (self classNameWithRole: #System), ' start' withTemps: #().
 	objectSpace installAsActiveProcess: process withProcessor: (self bootstrapEnvironment at: #Processor).
	
"  The specialObjectsArray is already installed above 
	self bootstrapInterpreter
		evaluateCode: 'theSystem specialObjectsArray: newArray.'
		withTemps: {
			'theSystem' -> (self classWithRole: #System) mirror.
			'newArray' -> objectSpace backend specialObjectsArray }."
	
	self followForwardingPointers.

"	espellBackend simulator stackPages pages do: [ :page | espellBackend simulator stackPages freeStackPage: page ].
	espellBackend simulator freeUntracedStackPages.	
"
	PBStepFinishedSignal log: 'image initialized'.
	self inform: 'Image Generated successfully'
