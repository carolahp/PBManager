hooks
hookInstallClass: aClassDefinition
	
	| aClass type code |
	"aClassDefinition is a class in the language definition"
	aClass := aClassDefinition.
	type := self typeFor: aClassDefinition.
	code := '| newClass |
	newClass := (PCClassBuilder new
			superclass: {superClass};
			name: ''{name}'';
			instVarNames: {instanceVariablesString};
			classVariableNames: {classVariablesString};
			yourself)
		{type};
		build.		
	newClass'
	format: {
			'superClass' -> (aClass superclass ifNil: ['nil'] ifNotNil: [ :superclass | superclass name ]).
			'name' -> aClass name.
			'type' -> type.
			'instanceVariablesString' -> ('#(', (' ' join: aClass instVarNames), ')').
			'classVariablesString' -> aClass behaviorStrategy classPool keys printString } asDictionary.	
	^ self newInstruction 
		code: code