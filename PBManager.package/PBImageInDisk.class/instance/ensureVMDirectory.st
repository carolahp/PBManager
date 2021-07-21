scripting
ensureVMDirectory
	self defaultVMDirectory exists
		ifFalse: [ (self newCommand
				command: 'wget';
				arguments:
					{'-O-'.
					('https://get.pharo.org/vm' , self versionVM).
					'|'.
					'bash'};
				workingDirectory: self defaultVMDirectory ensureCreateDirectory pathString;
				redirectStdout)
				runAndWaitWithTimeout: 5 seconds
				onTimeoutDo: [ self inform: 'impossible to download target VM' ]
				onExitDo: [ :cmd :stdOut :stdErr | 
					(self newCommand
						shell: '/bin/bash' command: stdOut contents;
						workingDirectory: self defaultVMDirectory pathString;
						redirectStdout)
						runAndWaitWithTimeout: 10 seconds
						onTimeoutDo: [ self inform: 'impossible to download target VM' ]
						onExitDo: [ :cmd1 :stdOut1 :stdErr1 | 
							self inform: 'target VM downloaded' ] ] ].
	^ self defaultVMDirectory