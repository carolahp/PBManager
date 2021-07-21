announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBBuilderRepositoryLoadedAnnouncement send: #update to: self.
	
	self pbBuilder announcer 
		when: PBSubStepFinishedSignal 
		do: [ :evt | textLog text: textLog text, evt message, Character cr asString ].
	
self pbBuilder announcer 
		when: PBReflectiveEvaluationEnds 
		do: [ :evt | self flag: 'look for an efficient way of loogging the reflective calls'"textLog text: textLog text, 'Reflective eval: ', evt code, Character cr asString" ]