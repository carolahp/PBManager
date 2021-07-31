scripting
responseAction: aResponseString
	| response message |
	response := aResponseString , Character cr asString, 'Process finished'.
	self inform: response.
	executionTimestamps add: DateAndTime now.
	
	output := self readOutputFile trim.
	message := '"',response,'"', 
					Character cr asString,
					'Displaying the last ', executionTimestamps size asString, ' execution output(s) ',
					executionTimestamps asArray asString,
					Character cr asString,Character cr asString,
					output.
				Transcript show: message.
	^ output
			
					
					 