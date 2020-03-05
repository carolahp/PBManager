enable/disable
setEnabledStatusOfDebuggingButtons: aBoolean
	self buttonEvalInGenImage enabled: aBoolean.
	self buttonExecInGenImage enabled: aBoolean.