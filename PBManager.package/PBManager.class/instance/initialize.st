initialization
initialize 
	| repo |
	super initialize.
	
	repo := (PBManagerRepository withPath: '/tmp/pharo-src') setPackagesInBS: {'Kernel' . 'Kernel-Rules'}.
	
	"packages := { {'a' . true}. {'b' . true}.{'c' . true}.{'d' . false}.{'e' . false}. }."
	"create dictionary indicating which packages belong to the kernel"
	PBManagerUI openWithRepository: repo.