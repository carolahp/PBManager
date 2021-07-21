initialization
destroy 
	announcer ifNotNil: [ 
		announcer subscriptions reset.
		announcer := nil.
	 ].
	pbRepository := nil.
	pbBuilderUI := nil
		