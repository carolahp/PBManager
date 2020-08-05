accessing
initializePackages
	| thePackages packagesInRepo classesList pksKeys pksValues classKeys classValues |
	"select only those packages specified in the packagesListFull, 
	if the list is not set, then select them all"
	packagesInRepo := self packagesDefaultListFull.
	"initialize my packages dictionary. packageName -> boolean (indicating wether the package is selected for the bootstrap)"
	
	packagesInRepo
		ifNotEmpty: [ pksKeys := packagesInRepo.
			pksValues := packagesInRepo
				collect: [ :rPackage | 
					self packagesDefaultListBootstrap
						anySatisfy: [ :bsPackage | bsPackage = rPackage ] ] ]
		ifEmpty: [ pksKeys := self ringEnvironment packages asArray collect: #name.
			pksValues := pksKeys collect: [ :each | true ] ].
	thePackages := Dictionary newFromKeys: pksKeys andValues: pksValues.	"packages names"	"set true only the packages considered in the BS list"

	"initialize my ring environment for the selected full packages"
	classesList := (self ringEnvironment packages asArray
		select: [ :pkg | thePackages keys includes: pkg name asSymbol ])
		gather: #definedBehaviors.
	"initialize my classes dictionary"
	classKeys := classesList collect: #name.
	classValues := classesList
		collect: [ :class | thePackages at: class package name ].
	classes := Dictionary newFromKeys: classKeys andValues: classValues.
	classesList
		do:
			[ :ringClass | self setClass: ringClass name asSelected: (classes at: ringClass name) ].
	^ thePackages