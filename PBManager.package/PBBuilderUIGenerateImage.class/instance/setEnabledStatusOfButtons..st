updating
setEnabledStatusOfButtons: aBoolean
	self buttonGenerateImage enabled: aBoolean.
	self checkboxInstallClasses enabled: aBoolean.
	self checkboxInstallMethods enabled: aBoolean.
	self checkboxInstallProcess enabled: aBoolean