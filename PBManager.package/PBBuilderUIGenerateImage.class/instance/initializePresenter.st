initialization
initializePresenter
	
	buttonGenerateImage whenActionPerformedDo:  
	[ :event | | builder |
		builder := self pbBuilder.
		builder bootstrapping: true.
		builder imageName: self textInputImageName text.
		builder pbRepository builder: builder.
		checkboxGenericBootstrapper state 
			ifTrue: [builder pbRepository ringEnvironment pbBootstrapper: PBBootstrapGeneric for32Bits].
		[builder initializeImage.
		self checkboxInstallClasses state ifTrue: [ 
			builder installClasses ].
		self checkboxInstallMethods state ifTrue: [ 
			builder installMethods ]. 
		self checkboxInstallProcess state ifTrue: [ 
			builder installProcess ].
		builder announceImageGenerated ] 
			ensure: [ 
				builder pbRepository builder: nil.
				builder bootstrapping: false ]
	 ].