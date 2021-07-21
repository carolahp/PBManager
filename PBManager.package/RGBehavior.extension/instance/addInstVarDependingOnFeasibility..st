*PBManager
addInstVarDependingOnFeasibility: instVarName
	| slot addSlot realSetter realGetter dummySetter dummyGetter addMethodBlock |
	addSlot := (self instVarNames contains: [ :ivname | ivname =  instVarName ]) not.
	
	realSetter := 'owner: anObject
	owner := anObject'. 
	realGetter := 'owner
	^ owner'.
	dummySetter := 'owner: anObject
	^ self'. 
	dummyGetter := 'owner
	^ nil'.	
	addMethodBlock := [ :source | self compile: source notifying: nil ].
	
	(self propertyNamed: #feasible)
		ifTrue: [
			addSlot ifFalse: [ self notify: 'Warning: an inst var named ', instVarName, ' is already defined!' ].
	 
			slot  := RGInstanceVariableSlot named: instVarName parent: self layout.
			addSlot ifTrue: [self layout addSlot: slot].
			"adding real accessors" 
			addMethodBlock value: realGetter.
			addMethodBlock value: realSetter.
			 ]
		ifFalse: [
			"check for classes with instSpec 3 that inherit the variable from one of their instSpec 1 superclasses. This works because we trasverse the inheritance tree starting from its root and add the iv to the parents first"
			(self allInstVarNames contains: [ :ivName | ivName = instVarName ]) 
				ifFalse: [ "adding dummy accessors"  
					addMethodBlock value: dummyGetter.
					addMethodBlock value: dummySetter. ]
				ifTrue: [  "adding dummy accessors"
					addMethodBlock value: realGetter.
					addMethodBlock value: realSetter. 
					self subclassesDo: [ :subclass |
						subclass addInstVarDependingOnFeasibility: instVarName ]
					 ].].

			
	
	self removePropertyNamed: #feasible
		
