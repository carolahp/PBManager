hooks
hookInitializeProcessScheduler
	|code|
	code := 'Processor := PCProcessorScheduler basicNew.
				Processor initProcessLists.'.
	^ (self newInstruction
		code: code;
		temps: #();
		yourself ) evaluate
