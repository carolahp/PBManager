accessing
togglePackage: aString
	self packages at: aString put: ((packages at: aString) not).