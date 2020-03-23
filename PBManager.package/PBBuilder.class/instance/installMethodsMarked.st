bootstrapping
installMethodsMarked
	self bootstrapper installOnlyMarkedMethods: true.
	self bootstrapper installMethods.
	self pbRepository setMethodsAsInstalled 