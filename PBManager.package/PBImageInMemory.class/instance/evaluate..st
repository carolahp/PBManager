code execution
evaluate: aString 
	self halt.
	"^ self newInterpreter evaluateAST: (self evaluator compile: aString).
	"