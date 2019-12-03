toggling
togglePackage: aString
	| toggled |
	toggled := (packages at: aString) not.
	self packages at: aString put: toggled.
	
	(ringEnvironment allClasses select: [ :c | (c isMetaclass not) and: [c package name = aString]]) do: [ :c | self setClass: c name asSelected: toggled ]