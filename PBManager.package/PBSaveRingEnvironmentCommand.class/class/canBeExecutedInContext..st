activation
canBeExecutedInContext: aToolContext
	self flag: 'commented to prevent the option "Export to Tonel" from showing in ClyRing2Environments'.
	"^ aToolContext navigationEnvironment system isKindOf: ClyRing2Environment
"
	^ false