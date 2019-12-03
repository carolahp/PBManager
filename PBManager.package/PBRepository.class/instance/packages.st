accessing
packages
"contains all the packages considered in the lists In and Out for the bootstrap UI"
	|  packagesInRepo classesList |
	
	packages 
		ifNil: [ 
			"select only those packages specified in the packagesListFull, 
			if the list is not set, then select them all"
			packagesInRepo := self packagesDefaultListFull.
			"initialize my packages dictionary. packageName -> boolean (indicating wether the package is selected for the bootstrap)"
			packages := Dictionary 
								newFromKeys: packagesInRepo "packages names"
								andValues: (packagesInRepo
												    collect: [ :rPackage | 
														self packagesDefaultListBootstrap anySatisfy: [ :bsPackage | bsPackage = rPackage ] ]). "set true only the packages considered in the BS list"
			"initialize my ring environment for the selected full packages"
			
			ringEnvironment := self tonelFullRepository asRingEnvironmentWith: packagesInRepo classes: nil languageDefinition: self languageDefinitionClass .
			"initialize my classes dictionary"	
			classesList := ((ringEnvironment packages select: [ :pkg | packages keys includes: pkg name asSymbol ]) gather: #definedBehaviors ).
			classes := Dictionary 
							newFromKeys: (classesList collect: #name)
							andValues: (classesList collect: [:class | packages at: class package name ]).
			classesList do: [ :ringClass | self setClass: ringClass name asSelected: (classes at: ringClass name) ].
			
			].
	^ packages.