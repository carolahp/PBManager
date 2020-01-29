bootstrapping
bootstrap
	"I should be excecuted only if my environment was set beforehand"
	ringEnvironment ifNil: [ Error signal: 'Ring environment must be set before bootstraping' ].
	PBStepStartedSignal log: 'Starting  Process.'.
	
	self prepareBootstrap.
	[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage.
		
	PBStepFinishedSignal log: 'Process ended.'
	