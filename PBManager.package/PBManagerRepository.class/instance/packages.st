accessing
packages
	packages 
		ifNil: [ 
			"the next call sets the value of packages"
			self packagesNames: (self tonelFullRepository packageDescriptionsFromReadableFileNames 
									collect: [ :each | each at: 1 ]) ].
	^ packages.