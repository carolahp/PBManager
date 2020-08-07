initialization
initializePresenter
	buttonGenerateImage
		whenActionPerformedDo: [ :event | 
			| builder |
			builder := self pbBuilder.
			self initializeBuilder.
			[ builder initializeImage.
			self checkboxInstallClasses state
				ifTrue: [ builder installClasses ].
			self checkboxInstallMethods state
				ifTrue: [ builder installMethods ].
			self checkboxInstallProcess state
				ifTrue: [ builder installProcess ].
			builder announceImageGenerated ]
				ensure: [ builder pbRepository builder: nil.
					builder bootstrapping: false ] ].
	buttonInstallClasses
		whenActionPerformedDo: [ :event | 
			| builder |
			builder := self pbBuilder.
			self initializeBuilder.
			builder initializeImage.
			builder installClasses ].
	buttonInstallMethods
		whenActionPerformedDo: [ :event | self pbBuilder installMethods ].
	buttonInstallProcess
		whenActionPerformedDo: [ :event | 
			| builder |
			[ builder := self pbBuilder.
			builder installProcess.
			builder announceImageGenerated ]
				ensure: [ builder pbRepository builder: nil.
					builder bootstrapping: false ] ]