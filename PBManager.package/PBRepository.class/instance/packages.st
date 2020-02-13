accessing
packages
	"contains all the packages considered in the lists In and Out for the bootstrap UI"
	packages ifNil: [ packages := self initializePackages ].
	^ packages.