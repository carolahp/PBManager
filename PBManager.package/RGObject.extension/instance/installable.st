*PBManager
installable
	" all elements are installed in the kernel by default "
	^ self propertyNamed: #install ifAbsent: [ true ]