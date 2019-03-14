bootstrapping
bootstrap
	self prepareBootstrap.
	"[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage."