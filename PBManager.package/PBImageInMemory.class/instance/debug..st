code execution
debug: aString 
	(PBHybridDebugger 
				withCode: aString
				interpreter: self newInterpreter) openWithSpec