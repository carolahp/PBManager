initialization
initialize 
	| dic pcks |
	super initialize.
	
	pcks := (PBManagerRepository withPath: './pharo70-sources/src') packages.
	"create dictionary indicating which packages belong to the kernel"
	dic := Dictionary newFromKeys: pcks andValues: (Array new: (pcks size)).
	dic keysDo: [ :k | (k indexOf: $s) > 0  ifTrue: [dic at: k put: true]
														ifFalse: [dic at: k put: false] ].
	PBManagerUI openWithPackages: dic.