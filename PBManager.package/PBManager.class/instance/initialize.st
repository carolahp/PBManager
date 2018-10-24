initialization
initialize 
	| packArr packages |
	super initialize.
	
	"packages := (PBManagerRepository withPath: './pharo70-sources/src') packages."
	packages := { {'a' . true}. {'b' . true}.{'c' . true}.{'d' . false}.{'e' . false}. }.
	"create dictionary indicating which packages belong to the kernel"
	packArr := packages" collect: [ :k | { k . (k indexOf: $z) > 0 }]".
	PBManagerUI openWithPackages: packArr.