bootstrapping
bootstrap 
	^ self initializeImage;
		installClasses;
		installMethods;
		installProcess;
		yourself