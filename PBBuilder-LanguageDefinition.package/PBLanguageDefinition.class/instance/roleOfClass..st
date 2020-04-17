class roles
roleOfClass: aRGBehavior 
	^ [ self classRoles keyAtValue: aRGBehavior name ] on: ValueNotFound do: [ nil ]