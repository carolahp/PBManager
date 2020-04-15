initialization
initializePresenter
	| bootstrapperClass |
	
	buttonGenerateImage whenActionPerformedDo:  
	[ :event | | builder |
		builder := self pbBuilder.
		builder imageName: self textInputImageName text.
	
		checkboxGenericBootstrapper state 
			ifTrue: [builder pbRepository ringEnvironment pbBootstrapper: PBBootstrapGeneric for32Bits].
		builder initializeImage.
		self checkboxInstallClasses state ifTrue: [ 
			builder installClasses ].
		self checkboxInstallMethods state ifTrue: [ 
			builder installMethods ]. 
		self checkboxInstallProcess state ifTrue: [ 
			builder installProcess ].
		builder announceImageGenerated 
	 ].