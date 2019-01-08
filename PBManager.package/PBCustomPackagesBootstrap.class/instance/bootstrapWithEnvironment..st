as yet unclassified
bootstrapWithEnvironment: aRingEnvironment
	"I receive anArray of String that contains the packages names that will be included in the image"

	PBStepStartedSignal log: 'Starting  Process.'.
	"necessary preparation steps performed manually"
	ringEnvironment := aRingEnvironment.
	self ensureBaselineOfPharoBootstrap.
	self prepareEnvironmentForHermes. "added to fix the memory SPUR problem generate in the assert for the adding of the Association class"
	self prepareEnvironmentForExport.
	"end of preparation steps"
	
	[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage.
		
	PBStepFinishedSignal log: 'Process ended.'
	