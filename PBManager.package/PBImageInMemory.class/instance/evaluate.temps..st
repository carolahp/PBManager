code execution
evaluate: aString temps: aCollection
	^ self newInterpreter evaluateAST: (self evaluator parse: aString) withTemps: aCollection