initialization
initializePresenter
	
	buttonGenerateImage whenActionPerformedDo:  
	[ :event | | builder |
		builder := self pbBuilder.
		builder imageName: self textInputImageName text.
		builder initializeImage.
		self checkboxInstallClasses state ifTrue: [ 
			builder installClasses.
			self checkboxInstallMethods state ifTrue: [ 
				builder installMethods. 
				self checkboxInstallProcess state ifTrue: [ 
					builder installProcess	 ] ] ].
		builder announceImageGenerated 
	 ].