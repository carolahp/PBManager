browsing
subscribeToAnnouncementsSendingMessage: aMessageSelector to: aReceiver
	self ringEnvironment announcer 
					when: ClassAdded , ClassCommented , ClassRecategorized , ClassModifiedClassDefinition , ClassRemoved , ClassRenamed	, ClassReorganized , MethodAdded , MethodModified , MethodRecategorized , MethodRemoved , ProtocolAdded , ProtocolRemoved 
					send: aMessageSelector
					to: aReceiver. 