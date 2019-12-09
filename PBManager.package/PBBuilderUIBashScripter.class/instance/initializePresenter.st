initialization
initializePresenter
	buttonRun whenActionPerformedDo:  
	[ :event | 
		self pbBuilder runBashScript: './..pharo ./', self selectedImage name arguments: #()
	]
	