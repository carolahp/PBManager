accessing - private
packagesDefaultListFull
	"returns the default list of packages available for being considered in the bootstrap when the pbrepository was initialized. This list is a subset of all the packages from the Tonel Repository"
	| allPackagesNamesFromTonel |
	"get names of all packages from the Tonel repository"
	allPackagesNamesFromTonel := self getPackagesNamesFromTonelRepo .
	
	^ self packagesListFull 
					ifNil: [ allPackagesNamesFromTonel ]
					ifNotNil: [ allPackagesNamesFromTonel intersection: self packagesListFull ].	
	
