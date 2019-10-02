accessing
classWithRole: aString 
	^ (self classNamed: aString) ifNil: [ self error: 'class ', aString, ' not defined!' ]