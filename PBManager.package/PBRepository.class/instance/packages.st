accessing
packages
"contains all the packages considered in the lists In and Out for the bootstrap UI"
	| allPackagesInRepo packagesInRepo classesList |
	packages 
		ifNil: [ 
			"get all packages from the Tonel repository"
			allPackagesInRepo := (self tonelFullRepository packageDescriptionsFromReadableFileNames 
													collect: [ :each | each at: 1 ]) .
			"select only those packages specified in the packagesListFull, 
			if the list is not set, then select them all"
			packagesInRepo := 
				packagesListFull 
					ifNil: [ allPackagesInRepo ]
					ifNotNil: [ allPackagesInRepo intersection: packagesListFull ].
			
			"initialize my packages dictionary"
			packages := Dictionary 
								newFromKeys: packagesInRepo "packages names"
								andValues: (packagesInRepo
												    collect: [ :rPackage | 
														self packagesDefaultListBootstrap anySatisfy: [ :bsPackage | bsPackage = rPackage ] ]). "set true only the packages considered in the BS list"
			"initialize my ring environment for the selected full packages"
			ringEnvironment := self tonelFullRepository asRingEnvironmentWith: self packagesNames.
			"initialize my classes dictionary"	
			classesList := ((ringEnvironment packages select: [ :pkg | packages keys includes: pkg name asSymbol ]) gather: #definedBehaviors ).
			
			classes := Dictionary 
							newFromKeys: (classesList collect: #name)
							andValues: (classesList collect: [:class | packages at: class package name ]).
			].
	^ packages.