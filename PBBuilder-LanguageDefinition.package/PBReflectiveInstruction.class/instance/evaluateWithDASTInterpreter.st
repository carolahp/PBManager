evaluating
evaluateWithDASTInterpreter
	^ self imageBuilder debuggerInterpreter
		evaluateCode: self code
		withTemps: self temps