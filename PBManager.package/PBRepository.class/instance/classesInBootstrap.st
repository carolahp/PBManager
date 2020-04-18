accessing
classesInBootstrap
	^ self packagesInBootstrap flatCollect: [ :package | package definedBehaviors ] 