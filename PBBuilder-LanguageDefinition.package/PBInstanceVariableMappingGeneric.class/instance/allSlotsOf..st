private - utils
allSlotsOf: aClassName
	^ ((environment classNamed: aClassName) allSlots collect: [ :e | e name ]) joinUsing: ' '.