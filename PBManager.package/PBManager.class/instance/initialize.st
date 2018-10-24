initialization
initialize 
	| packArr packages |
	super initialize.
	
	packages := (PBManagerRepository withPath: './pharo70-sources/src') packages.
	"create dictionary indicating which packages belong to the kernel"
	packArr := packages collect: [ :k | { k . (k indexOf: $z) > 0 }].
	PBManagerUI openWithPackages: packArr.