as yet unclassified
bootstrapWithEnvironment: aRingEnvironment

	PBStepStartedSignal log: 'Starting  Process.'.

	ringEnvironment := aRingEnvironment.
	[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage.
		
	PBStepFinishedSignal log: 'Process ended.'
	