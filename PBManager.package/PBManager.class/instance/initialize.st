initialization
initialize 
	| repo args |
	super initialize.
	
	args := Dictionary new.
	args at: #path put: '/tmp/pharo-src'.
	args at: #showUI put: true.
	
	repo := PBManagerRepository with: args.
	
	"environment := repo asRing2EnvironmentWith: self allPackagesForHermes."
	"packages := { {'a' . true}. {'b' . true}.{'c' . true}.{'d' . false}.{'e' . false}. }."
	"create dictionary indicating which packages belong to the kernel"
	