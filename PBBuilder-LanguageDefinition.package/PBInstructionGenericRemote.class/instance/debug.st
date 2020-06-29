evaluating
debug
	^ (PBHybridDebugger withCode: self code temps: self temps interpreter: imageBuilder debuggerInterpreter interpreter) openWithSpec