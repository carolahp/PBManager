evaluating
evaluateMarking
	| interpreterWithMarking |
	interpreterWithMarking := DASTEvaluatorWithMarking newFrom: self imageBuilder debuggerInterpreter.
	^ interpreterWithMarking
		evaluateCode: self code
		withTemps: self temps