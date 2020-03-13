running
initializeSpecialObjectArray

"	objectSpace mustRebuildSpecialObjectsArray.
"	objectSpace specialObjectsArray: self newSpecialObjectsArray.

	self bootstrapInterpreter
		evaluateCode: 'theSystem specialObjectsArray: newArray.'
		withTemps: {
			'theSystem' -> (self classWithRole: #System) mirror.
			'newArray' -> objectSpace backend specialObjectsArray }.