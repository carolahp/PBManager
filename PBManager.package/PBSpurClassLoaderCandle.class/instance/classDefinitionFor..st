stubs
classDefinitionFor: aClass
	"Answer a String that defines the receiver."

	| type classInstallerName |

	type := self typeFor: aClass.
	Transcript show: aClass name, ',', type, Character cr.
	
	classInstallerName := (systemDefinition classWithRole: #ClassInstaller).
	
	^ '| newClass |
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
			'classVariablesString' -> aClass behaviorStrategy classPool keys printString } asDictionary.	.
	
