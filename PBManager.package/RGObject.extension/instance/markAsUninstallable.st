*PBManager
markAsUninstallable
	" an uninstallable method won't be installed in the kernel  "
	self propertyNamed: #install put: false