code execution
evaluate: aString 
	^ self newInterpreter evaluateAST: (self evaluator parse: aString).
	