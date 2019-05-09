bootstrapping
bootstrap
	self prepareBootstrap.
	self createImage.
	"[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage."
	self inform: 'image bootstrapped successfully'