scripting
responseAction: aResponseString
	| response outputFile |
	response := aResponseString , Character cr asString, 'Process finished'.
	executionTimestamps add: DateAndTime now.
	self inform: response.
	outputFile := File
		openForReadFileNamed: (self imageFileReference absolutePath , 'txt') asFileReference ensureCreateFile pathString.
	Transcript
		crShow: ' ';
		crShow:
			(outputFile isStream
				ifTrue: [  
					'"', 
					self imageFileReference basename asString,'" execution output', 
					Character cr asString,
					'Displaying the last ', executionTimestamps size asString, ' execution output(s) ',
					executionTimestamps asArray asString,
					Character cr asString,Character cr asString,
					outputFile contents.
					 ]
				ifFalse: [ 'File not generated' ])