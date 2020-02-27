accessing
initializePackages
	
	| thePackages packagesInRepo classesList |
	"select only those packages specified in the packagesListFull, 
	if the list is not set, then select them all"
	packagesInRepo := self packagesDefaultListFull.
	"initialize my packages dictionary. packageName -> boolean (indicating wether the package is selected for the bootstrap)"
	thePackages := Dictionary 
						newFromKeys: packagesInRepo "packages names"
						andValues: (packagesInRepo
										    collect: [ :rPackage | 
												self packagesDefaultListBootstrap anySatisfy: [ :bsPackage | bsPackage = rPackage ] ]). "set true only the packages considered in the BS list"
	"initialize my ring environment for the selected full packages"
	"initialize my classes dictionary"	
	classesList := ((self ringEnvironment packages select: [ :pkg | thePackages keys includes: pkg name asSymbol ]) gather: #definedBehaviors ).
	classes := Dictionary 
					newFromKeys: (classesList collect: #name)
					andValues: (classesList collect: [:class | thePackages at: class package name ]).
	classesList do: [ :ringClass | self setClass: ringClass name asSelected: (classes at: ringClass name) ].
	^ thePackages