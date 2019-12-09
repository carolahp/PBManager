initialization
initializePresenter
	
	buttonRun whenActionPerformedDo:  
	[ :event | | imagePath |
		imagePath := 'bootstrapped/', self pbBuilder selectedImage basename.
		self pbBuilder runBashScript: './pharo' arguments: { imagePath }
	]