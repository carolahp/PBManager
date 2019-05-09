running
installMethod: method inBehavior: theClass

	self objectSpace interpreter
		evaluateCode: 'theBehavior methodDict at: selector put: compiledMethod'
		withTemps:
			{'theBehavior' -> theClass.
			'selector' -> (method selector asLiteralInObjectSpace: objectSpace).
			'compiledMethod' -> method }