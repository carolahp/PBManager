instance-creation
fromImageFile: aFileReference metadata: aDictionary 
	^ self basicNew 
		imageFileReference: aFileReference;
		name: (aDictionary at: #name); 
		bootstrapper: (aDictionary at: #bootstrapper); 
		scriptCommand: (aDictionary at: #scriptCommand);
		scriptArguments: (aDictionary at: #scriptArguments);
		timestamp: (aDictionary at: #timestamp);
		initialize