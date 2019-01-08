accessing - private
packagesDefaultListFull: anArray

	"sets the default list of packages available for being considered in the bootstrap when the pbrepository is initialized. This list should a subset of all the packages from the Tonel Repository"
	
	packages ifNotNil: [ Error signal: 
		'Trying to modify the default packages in repository after initializing the repository' ].
	packagesListFull := anArray
