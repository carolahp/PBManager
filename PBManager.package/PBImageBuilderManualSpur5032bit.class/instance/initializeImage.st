initialization
initializeImage
	| process |

	self checkpoint: 'image_initialization'.
	
	self initializeSpecialObjectArray.
	
	self bootstrapInterpreter evaluateCode: '
	Smalltalk at: #Processor put: (ProcessorScheduler basicNew).
	(Smalltalk at: #Processor) instVarAt: 1 put: ((1 to: 80) collect: [ :i | ProcessList new ])'.

	"Initialize the processor association for the special objects array.
	Enchancement possible: This should be automatically managed by the createVMStubs method"
	objectSpace backend processorAssociation: (self bootstrapInterpreter evaluateCode: 'Smalltalk globals associationAt: #Processor.').
	
	process := objectSpace
		createProcessWithPriority: 40 
		doing: ('PharoBootstrapInitialization 
			initializeImageOfType: ''Pharo'' 
			major: {major} 
			minor: {minor} 
			patch: {patch}
			suffix: ''{suffix}'' 
			build: {build} 
			commitHash: ''{hash}''.' 
		format: {
			'major' -> versionInfo major. "7"
			'minor' -> versionInfo minor. "0"
			'patch' -> versionInfo patch. "0"
			'suffix' -> versionInfo suffix. "'alpha'"
			'build' -> versionInfo buildNumber. "-1"
			'hash' -> versionInfo commitHash. " d40cba880"
	} asDictionary).
 	objectSpace installAsActiveProcess: process.
	
	self followForwardingPointers.

"	espellBackend simulator stackPages pages do: [ :page | espellBackend simulator stackPages freeStackPage: page ].
	espellBackend simulator freeUntracedStackPages."

	PBStepFinishedSignal emit: 'image initialized'.
	self inform: 'Image Generated Successfully'.
	
