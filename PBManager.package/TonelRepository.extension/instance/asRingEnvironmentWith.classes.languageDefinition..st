*PBManager
asRingEnvironmentWith: packageNames classes: classesNames languageDefinition: aClass 
	
	| aRG2Environment |
	aRG2Environment := aClass new.
	aRG2Environment announcer suspendAllWhile: [ 
		(packageNames) do: [ :pn | 
			| snap defs package version |
			package := aRG2Environment ensurePackageNamed: pn asSymbol.
			version := self versionWithInfo: (self versionInfoFromVersionNamed: pn).
			snap := version snapshot.

			defs := snap definitions select: [:def | classesNames includes: def className ].
			defs do: [ :each |		
				each ensureRingDefinitionIn: aRG2Environment package: package ]
			displayingProgress: 'snap'.] 
		 displayingProgress: 'version'.
		].		
			
	aRG2Environment clean .
	
	aRG2Environment behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].			
	^ aRG2Environment fixProtoObjectClassSuperclass; yourself 