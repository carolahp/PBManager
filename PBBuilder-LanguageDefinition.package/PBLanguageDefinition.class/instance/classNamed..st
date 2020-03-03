accessing
classNamed: aString 
	^ [ super classNamed: aString ] on: Error do: [ nil ] 