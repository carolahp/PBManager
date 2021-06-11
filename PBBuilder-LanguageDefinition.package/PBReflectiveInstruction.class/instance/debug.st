evaluating
debug
	^ (PBHybridDebugger withCode: self code temps: self temps interpreter: self imageBuilder debuggerInterpreter interpreter) openWithSpec