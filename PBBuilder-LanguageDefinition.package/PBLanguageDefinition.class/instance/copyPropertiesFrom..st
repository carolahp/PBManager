exporting
copyPropertiesFrom: aRGEnvironment
	aRGEnvironment behaviorsDo: [ :beh | | newbeh |
		newbeh := self classNamed: beh name.
		newbeh copyPropertiesFrom: beh ]