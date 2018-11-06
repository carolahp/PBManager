accessing - private
packagesListFull: anArray
	packages ifNotNil: [ Error signal: 
		'Trying to modify the default packages in repository after initializing the repository' ].
	packagesListFull := anArray
