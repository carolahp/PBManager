accessing
specialZeroSizedClasses
	^ {(self classWithRole: #UndefinedObject).
	(self classWithRole: #True).
	(self classWithRole: #False)}