objectsInitializations
initializeNotinstallables 

	(self classWithRole: #ProtoObject) metaclass 
		localMethodsDo: [ :method |
			((#(new new:) indexOf: method selector) > 0)
			 	ifTrue: [ method markAsNotInstallable ] ].
	
	(self classNamed: #Hook) ifNotNil: [:c | c markAsNotInstallable].
	(self classNamed: #Hook) ifNotNil: [:c | c metaclass markAsNotInstallable].
	