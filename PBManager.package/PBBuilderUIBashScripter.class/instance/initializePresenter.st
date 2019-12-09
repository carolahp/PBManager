initialization
initializePresenter
	buttonRun whenActionPerformedDo:  
	[ :event | 
		OSSUnixSubprocess new
			command: '/bin/ls';
			arguments: #('-la' '/Users');
			redirectStdout;
			runAndWaitOnExitDo: [ :process :outString  |
				outString inspect
			]
	]
	