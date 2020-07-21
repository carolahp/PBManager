objectsInitializations
initializeUninstallables 

	(self classNamed: #PCObject) metaclass localMethodsDo: [ :method | (method selector = #new) ifTrue: [ method markAsUninstallable ] ].
	(self classNamed: #Hook) markAsUninstallable.
	