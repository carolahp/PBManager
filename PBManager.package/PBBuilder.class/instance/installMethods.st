bootstrapping
installMethods
	self bootstrapper installMethods.
	self pbRepository setMethodsAsInstalled.
	self checkpoint: 'Methods installed'.