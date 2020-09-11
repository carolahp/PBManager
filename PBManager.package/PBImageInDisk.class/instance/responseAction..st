scripting
responseAction: aResponseString
	| response outputFile |
	response := aResponseString , Character cr asString, 'Process finished'.
	self inform: response.
	outputFile := File
		openForReadFileNamed: (self imageFileReference absolutePath , 'txt') pathString.
	Transcript
		crShow: '';
		crShow:
			(outputFile isStream
				ifTrue: [ outputFile asString , Character cr asString, outputFile contents ]
				ifFalse: [ 'File not generated' ])