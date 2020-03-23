announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBImageGeneratedAnnouncement send: #addGeneratedImageToList to: self.
	self pbBuilder announcer when: PBSimulatedEvaluationDone send: #updateAccessedObjectsList to: self.
	
	