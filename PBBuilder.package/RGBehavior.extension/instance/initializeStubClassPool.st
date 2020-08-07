*PBBuilder
initializeStubClassPool
	| classVarBindings classPool |
	classVarBindings := self classVarNames collect: [ :varName | | remoteClassVar |
		remoteClassVar := self parent classClassVariable remote basicNew asRemoteAssociation.
		remoteClassVar key: varName
	].
	classPool := (self makeRemote: classVarBindings) asRemoteArray asDictionary.
	self remote classPool: classPool