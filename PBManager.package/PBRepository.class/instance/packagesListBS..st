accessing - private
packagesListBS: anArray
	packages ifNotNil: [ Error signal: 
		'Trying to modify the default packages in BS after initializing the repository' ].
	packagesListBS := anArray
