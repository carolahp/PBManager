evaluating
evaluateMarking
	^ self imageBuilder debuggerInterpreter
		evaluateCode: self code
		withTemps: self temps