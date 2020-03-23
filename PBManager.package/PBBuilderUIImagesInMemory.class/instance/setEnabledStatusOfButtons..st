enable/disable
setEnabledStatusOfButtons: aBoolean
	self buttonDebugInImage enabled: aBoolean.
	self buttonEvaluateInImage enabled: aBoolean.
	self buttonWriteGenImage enabled: aBoolean.
	self buttonViewCode enabled: aBoolean.
	self buttonExternalEvaluate enabled: aBoolean.
	self textInputImageName enabled: aBoolean.
	self textExternalCodeInput enabled: aBoolean.
	self buttonGenerateImageMinimal enabled: aBoolean