accessing
checkDependecies: aBoolean
	"this variable determines whether the dependencies during the package selection are performed. If this variable is set to true, then a ring model is created, containing all the packages available to be selected for the bootstrap"
	^ checkDependencies := aBoolean