updating
setEnabledStatusOfButtons: aBoolean
	{self buttonGenerateImage.
	self checkboxInstallClasses.
	self checkboxInstallMethods.
	self checkboxInstallProcess.
	self buttonInstallProcess.
	self buttonInstallProcess.
	self buttonInstallProcess} do: [ :widget | widget enabled: aBoolean ]