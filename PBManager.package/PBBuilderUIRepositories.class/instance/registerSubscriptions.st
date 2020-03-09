announcements-subscriptions
registerSubscriptions
	self pbBuilder announcer when: PBBuilderRepositoryLoadedAnnouncement send: #update to: self.
	self pbBuilder announcer when: PBImageWrittenToDiskAnnouncement send: #update to: self