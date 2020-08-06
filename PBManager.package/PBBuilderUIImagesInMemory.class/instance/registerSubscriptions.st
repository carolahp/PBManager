announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBImageGeneratedAnnouncement, PBVMStubsCreatedAnnouncement do: [ :evt |
		self addGeneratedImageToList.
		self setEnabledStatusOfButtons: true.
		" Remove code and variables from evaluator window "
		self textCodeInput text: ''.
		self listCodeVariables items: #()
	].
	
	self pbBuilder announcer when: PBSimulatedEvaluationDone send: #updateAccessedObjectsList to: self.
	self pbBuilder announcer when: PBReflectiveEvaluationBegins do: [ :evt | 
		self textCodeInput text: evt code.
		self listCodeVariables items: evt temps
		 ].
	self pbBuilder announcer when: PBBuilderRepositoryLoadedAnnouncement send: #reset to: self.
	