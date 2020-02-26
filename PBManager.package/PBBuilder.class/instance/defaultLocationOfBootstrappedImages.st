accessing-constants
defaultLocationOfBootstrappedImages
	^ (FileSystem workingDirectory / 'bootstrapped') ensureCreateDirectory  