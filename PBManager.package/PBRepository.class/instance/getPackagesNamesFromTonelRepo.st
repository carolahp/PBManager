accessing - private
getPackagesNamesFromTonelRepo
	^ packagesNamesFromTonelRepo ifNil: [ 
		packagesNamesFromTonelRepo := self tonelFullRepository packageDescriptionsFromReadableFileNames 
													collect: [ :each | each at: 1 ] ]