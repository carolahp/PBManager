compiler
at: aString ifAbsent: aBlockClosure 
	^ self classNamed: aString ifAbsent: aBlockClosure