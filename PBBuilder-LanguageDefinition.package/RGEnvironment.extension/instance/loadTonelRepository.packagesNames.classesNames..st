*PBBuilder-LanguageDefinition
loadTonelRepository: aTonelRepository packagesNames: packagesNames classesNames: classesNames
		
	self announcer suspendAllWhile: [ 
		(packagesNames) do: [ :pn | 
			| snap defs package |
			package := self ensurePackageNamed: pn asSymbol.
			version := aTonelRepository versionWithInfo: (aTonelRepository versionInfoFromVersionNamed: pn).
			snap := version snapshot.
			
			defs := classesNames 
				ifNil: [ snap definitions ]
				ifNotNil: [ snap definitions select: [:def | classesNames includes: def className ] ].
			defs do: [ :each |	
					(each asRingDefinitionIn: self) ensureRingDefinitionIn: self package: package ]
			displayingProgress: 'snap'.] 
		 displayingProgress: 'version'.
		].		
			
	self clean .
	
	self behaviorsDo: [ :beh |
		beh superclass == beh ifTrue: [ beh superclass: nil. ] ].		
			
	^ self fixProtoObjectClassSuperclass; yourself 