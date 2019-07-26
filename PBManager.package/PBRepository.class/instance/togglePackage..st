API
togglePackage: aString
	| toggled |
	toggled := (packages at: aString) not.
	self packages at: aString put: toggled.
	(ringEnvironment allClasses select: [ :c | c package name = aString ]) do: [ :c | self classes at: c name put: toggled ]