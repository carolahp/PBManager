announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBImageGeneratedAnnouncement send: #addGeneratedImageToList to: self.
	self pbBuilder announcer when: PBSimulatedEvaluationDone send: #updateAccessedObjectsList to: self.
	self pbBuilder announcer when: PBSubStepFinishedSignal do: [ :evt | 
		
		(evt message = '> vm stubs created') ifTrue: [self setEnabledStatusOfButtons: true . ]].
	self pbBuilder announcer when: PBReflectiveEvaluationBegins do: [ :evt | 
		self textCodeInput text: evt code.
		self listCodeVariables items: evt temps
		 ]