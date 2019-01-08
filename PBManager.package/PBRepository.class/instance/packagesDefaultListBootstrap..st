accessing - private
packagesDefaultListBootstrap: anArray
	"sets the default list of packages selected for bootstrap when the pbrepository was initialized. For getting the final list of selected packages use packagesNamesInBootstrap"
	
	packages ifNotNil: [ Error signal: 
		'Trying to modify the default packages in Bootstrap after initializing the repository' ].
	packagesListBootstrap := anArray
