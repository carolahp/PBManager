as yet unclassified
bootstrapWithEnvironment: aRingEnvironment
	"I receive anArray of String that contains the packages names that will be included in the image"

	PBStepStartedSignal log: 'Starting  Process.'.

	ringEnvironment := aRingEnvironment.
	self ensureBaselineOfPharoBootstrap.
	[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage.
		
	PBStepFinishedSignal log: 'Process ended.'
	