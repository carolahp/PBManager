accessing
packagesNames: anArrayOfStrings
	"Sets the packages of the repository. By default there are no packages selected for the bootstrap"
	packages := Dictionary newFromKeys: anArrayOfStrings "packages names"
								  andValues: ((Array new: anArrayOfStrings size) 
												    collect: [ :x | false ]). "an array of false values"
	
