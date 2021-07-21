hooks
registerClass: remoteClass fromDefinition: aRGBehavior 
	self classLoader
		registerClass: remoteClass asRemoteClass
		definition: aRGBehavior
		fullyLoaded: true.
	self classLoader
		registerClass: remoteClass asRemoteClass basicClass
		definition: aRGBehavior metaclass
		fullyLoaded: true