code execution
debug: aString 
self halt.
	(PBHybridDebugger 
				withCode: aString
				interpreter: self newInterpreter) openWithSpec