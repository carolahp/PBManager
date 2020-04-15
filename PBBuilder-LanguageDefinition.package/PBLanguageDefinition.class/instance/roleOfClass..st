class roles
roleOfClass: aRGBehavior 
	^ [ self classRoles keyAtValue: aRGBehavior ] on: ValueNotFound do: [ nil ]