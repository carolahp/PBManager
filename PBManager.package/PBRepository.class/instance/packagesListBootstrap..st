accessing - private
packagesListBootstrap: anArray
	packages ifNotNil: [ Error signal: 
		'Trying to modify the default packages in Bootstrap after initializing the repository' ].
	packagesListBootstrap := anArray
