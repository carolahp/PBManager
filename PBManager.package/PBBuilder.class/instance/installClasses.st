bootstrapping
installClasses
	self bootstrapper installClasses.
	self pbRepository setClassesAsInstalled.
	self checkpoint: 'Classes installed'.