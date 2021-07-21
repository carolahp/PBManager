subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBBuilderRepositoryLoadedAnnouncement send: #update to: self