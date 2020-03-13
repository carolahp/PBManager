stubs
classDefinitionFor: aClass
	"Answer a String that defines the receiver."

	| type classInstaller |

	type := self typeFor: aClass.
	
	classInstaller := (systemDefinition classWithRole: #ClassInstaller).
	
	^ '| newClass |
	newClass := ({classInstaller} new
			superclass: {superClass};
			name: ''{name}'';
			instVarNames: {instanceVariablesString};
			classVariableNames: {classVariablesString};
			yourself)
		{type};
		build.		
	newClass'
	format: {
			'classInstaller' -> classInstaller.
			'superClass' -> (aClass superclass ifNil: ['nil'] ifNotNil: [ :superclass | superclass name ]).
			'name' -> aClass name.
			'type' -> type.
			'instanceVariablesString' -> ('#(', (' ' join: aClass instVarNames), ')').
			'classVariablesString' -> aClass behaviorStrategy classPool keys printString } asDictionary.	.
	
