*PBManager
addInstVarDependingOnFeasibility: instVarName
	| slot addSlot |
	addSlot := self instVarNames contains: [ :ivname | ivname =  instVarName ].
	addSlot ifFalse: [ self notify: 'Warning: an inst var named ', instVarName, ' is already defined!' ].
	(self propertyNamed: #feasible)
		ifTrue: [ 
			slot  := RGInstanceVariableSlot named: instVarName parent: self layout.
			addSlot ifTrue: [self layout addSlot: slot].
			"addLocalMethod getter" 
			(self compile: 
'owner
	^ owner' 
	notifying: nil).
			"addLocalMethod setter" 
			(self compile: 
'owner: anObject
	owner := anObject' 
	notifying: nil).

			 ]
		ifFalse: [
			"addLocalMethod getter"
			(self compile: 
'owner
	^ nil' 
	notifying: nil). 
			"addLocalMethod setter" 
			(self compile: 
'owner: anObject
	^ nil' 
	notifying: nil).

			self subclassesDo: [ :subclass |
				subclass addInstVarDependingOnFeasibility: instVarName ]
			 ].
	
	self removePropertyNamed: #feasible
		
