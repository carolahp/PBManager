enable/disable
setEnabledStatusOfButtons: aBoolean
	self buttonDebugInImage enabled: aBoolean.
	self buttonEvaluateInImage enabled: aBoolean.
	self buttonWriteGenImage enabled: aBoolean.
	self textInputImageName enabled: aBoolean.