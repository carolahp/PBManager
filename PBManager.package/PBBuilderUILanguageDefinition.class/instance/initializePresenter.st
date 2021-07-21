initialization
initializePresenter 
	buttonEditCode whenActionPerformedDo: [ :event | 
			self pbRepository classesNamesInBootstrap
				ifEmpty: [ self inform: 'no classes selected' ]
				ifNotEmpty: [ self pbRepository
						subscribeToAnnouncementsSendingMessage: #markRepositoryAsModified
						to: self.
					self pbRepository browseCode ] ].
	buttonVisualize whenActionPerformedDo: [ :event | 
			self pbRepository classesNamesInBootstrap
				ifEmpty: [ self inform: 'no classes selected' ]
				ifNotEmpty: [ self openVisualizationOfOwnerInstanceVariable.
					self openVisualizationOfTestsResults  ] ]