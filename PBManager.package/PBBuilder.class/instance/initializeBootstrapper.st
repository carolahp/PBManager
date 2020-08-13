bootstrapping
initializeBootstrapper
	self bootstrapper
		prepareBootstrap;
		initializeBuilder.
	self bootstrapper builder initializeBootstrapEnvironment.
	self checkpoint: 'bootstrap environment initialized'