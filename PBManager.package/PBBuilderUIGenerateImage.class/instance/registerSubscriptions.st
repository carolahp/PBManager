announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBBuilderRepositoryLoadedAnnouncement send: #update to: self.
	
	self pbBuilder announcer 
		when: PBSubStepFinishedSignal 
		do: [ :evt | textLog text: textLog text , evt message, Character cr asString ]