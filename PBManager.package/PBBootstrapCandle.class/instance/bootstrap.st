bootstrapping
bootstrap
	self halt.
	self prepareBootstrap.
	self createImage.
	"[self createImage ] on:AssertionFailure do: [ :e | e resume ].
	self initializeImage."
	