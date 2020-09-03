enable/disable
setEnabledStatusOfButtons: aBoolean
	{ self buttonDebugInImage .
	self buttonEvaluateInImage .
	self buttonWriteGenImage .
	self buttonViewCode .
	self buttonExternalEvaluate .
	self textInputImageName .
	self textExternalCodeInput .
	self buttonGenerateImageMinimal .
	self buttonInspectImage.
	self buttonRunImageTests.
	self buttonInspectCodeVariable } do: [ :widget | widget enabled: aBoolean ] .