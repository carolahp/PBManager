hooks
hookRegisterClass: remoteClass fromDefinition: aRGBehavior withLoader: classLoader
	classLoader
		registerClass: remoteClass asRemoteClass
		definition: aRGBehavior
		fullyLoaded: true.
	classLoader
		registerClass: remoteClass asRemoteClass basicClass
		definition: aRGBehavior metaclass
		fullyLoaded: true