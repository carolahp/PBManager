cleaning
ensurePackageNamed: aSymbol

	^ self ask packages 
		detect: [:each | each name = aSymbol] 
		ifNone: [ | newPackage |
				newPackage := self class packageClass named: aSymbol parent: self.
				self addPackage: newPackage.
				newPackage ].