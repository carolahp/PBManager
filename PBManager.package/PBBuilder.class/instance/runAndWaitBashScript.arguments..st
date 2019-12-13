image-functions
runAndWaitBashScript: aCommand arguments: aCollection 
	
	^ (self bashScript: aCommand arguments: aCollection) runAndWait 