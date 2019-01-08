accessing - private
packagesDefaultListBootstrap
	"returns the deault list of packages selected for bootstrap when the pbrepository was initialized. For getting the final list of selected packages use packagesNamesInBootstrap"
	packagesListBootstrap ifNil: [ ^#() ].
	^packagesListBootstrap
