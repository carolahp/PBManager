evaluating
evaluateToSpecialize
	" load missing definitions from pharo and mark object-models accessed during the evaluation to install in the kernel"
	^ self imageBuilder debuggerInterpreter
		evaluateCode: self code
		withTemps: self temps