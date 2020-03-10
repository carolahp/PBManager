accessing
classNamed: aString 
	^ ([super classNamed: aString] on: Error do: [ 
		[self classWithRole: aString] on: Error do: [nil] ]) 