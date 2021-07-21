accessing
immediateClasses
	^ self immediateClassRoles collect: [ :roleName |
		self classWithRole: roleName ]