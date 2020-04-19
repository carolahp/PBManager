code execution
debug: aString temps: aCollection
	(PBHybridDebugger 
				withCode: aString
				temps: aCollection
				interpreter: self newInterpreter) openWithSpec