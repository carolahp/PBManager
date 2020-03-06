initialization
initializePresenter
	buttonDebugInImage whenActionPerformedDo:  
	[ :event |  
		(PBHybridDebugger 
				withCode: self textCodeInput text 
				interpreter: self debuggerInterpreter) openWithSpec ].
	
	buttonEvaluateInImage whenActionPerformedDo:  
	[ :event |
		(self interpreter evaluateCode: self textCodeInput text withTemps: #()) inspect
	 ].