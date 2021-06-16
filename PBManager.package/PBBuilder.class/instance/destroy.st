initialization
destroy 
	self announcer subscriptions reset.
	self announcer: nil.
	
	bootstrappedImage := nil.
	pbRepository ifNotNil: [:repo | 
		repo builder: nil ].
	pbRepository := nil