*PBManager
markAsNotInstallable
	" an uninstallable method won't be installed in the kernel  "
	super markAsNotInstallable.
	self localMethodsDo: [ :m | m markAsNotInstallable ]