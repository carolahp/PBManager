evaluating
evaluate
	^ self imageBuilder bootstrapInterpreter
		evaluateCode: self code
		withTemps: self temps