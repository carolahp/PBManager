initialization
initialize 
	| packages |
	super initialize.
	
	packages := (PBManagerRepository withPath: '/tmp/pharo-src') packages.
	"packages := { {'a' . true}. {'b' . true}.{'c' . true}.{'d' . false}.{'e' . false}. }."
	"create dictionary indicating which packages belong to the kernel"
	PBManagerUI openWithPackages: packages.