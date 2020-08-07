initialization
initializeBuilder 
	| builder |
	builder := self pbBuilder.
	builder bootstrapping: true.
	builder imageName: self textInputImageName text.
	self halt.
	builder pbRepository builder: builder.
	builder pbRepository bootstrapper: PBBootstrapGeneric for32Bits.
		