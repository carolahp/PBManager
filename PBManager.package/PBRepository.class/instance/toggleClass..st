toggling
toggleClass: aString 
	| toggled package pToggle classesInPackage classesInPackageWithSameStateAsPackage |
	" The package to which the toggled class belongs "
	
	package := (ringEnvironment classNamed: aString) package.
	classesInPackage := package classes collect: #name.
	pToggle := self packages at: package name.
	
	toggled := (classes at: aString) not.
	self setClass: aString asSelected: toggled.
	 
	classesInPackageWithSameStateAsPackage := (classes associationsSelect: [ :assoc | (classesInPackage includes: assoc key) and: [ assoc value = pToggle ]]) keys.
	" Toggle package only if necessary "
	((pToggle and: [classesInPackageWithSameStateAsPackage size = 0]) 
		or: [pToggle not and: [classesInPackageWithSameStateAsPackage size > 0]]) 
		ifTrue: [ self packages at: package name put: pToggle not ].
	
	
	