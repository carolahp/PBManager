initialization
togglePackage: aString
	self packages: 
		(packages collect: [ :p | ((p at: 1) == aString) 
											ifTrue: { (p at: 1) . (p at: 2) not }
											ifFalse: p 
									]).
	self updatePackagesLists