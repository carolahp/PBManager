accessing - private
packagesDefaultListBootstrap
	"returns the deault list of packages selected for bootstrap when the pbrepository was initialized.
	If no list was set, return all default packages for the bootstrap.
	For getting the final list of selected packages use packagesNamesInBootstrap"
	packagesListBootstrap ifNil: [ ^ self packagesDefaultListFull ].
	^packagesListBootstrap
