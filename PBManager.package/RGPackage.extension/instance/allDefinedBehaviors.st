*PBManager
allDefinedBehaviors
	"including metaclasses"
	^ self definedBehaviors gather: [:beh | {beh . beh metaclass} ]