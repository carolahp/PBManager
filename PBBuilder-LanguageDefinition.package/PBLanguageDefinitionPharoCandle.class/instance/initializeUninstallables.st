objectsInitializations
initializeUninstallables 

	(self classNamed: #PCObject) metaclass 
		localMethodsDo: [ :method |
			((#(new new:) indexOf: method selector) > 0)
			 	ifTrue: [ method markAsUninstallable ] ].
	(self classNamed: #Hook) markAsUninstallable.
	