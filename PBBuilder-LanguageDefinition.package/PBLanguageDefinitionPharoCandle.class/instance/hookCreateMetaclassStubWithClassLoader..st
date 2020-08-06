hooks
hookCreateMetaclassStubWithClassLoader: aClassLoader 
	| model loader metaclassIndex classIndex theNewMetaclass theNewMetaclassClass |
	" We need to create the metaclass and its respective metaclass (the metaclass class) "
	loader := aClassLoader.
	model := self classNamed: #Metaclass.
	
	metaclassIndex := aClassLoader newClassIndex.
	classIndex := aClassLoader newClassIndex.

	"This is Metaclass"
	theNewMetaclass := loader
		createStubForClassNamed: model name
		metaclassIndex: metaclassIndex
		newClassIndex: classIndex.
	loader registerClass: theNewMetaclass definition: model fullyLoaded: false.

	"This is Metaclass class"
	theNewMetaclassClass := (loader
		createStubForClassNamed: model metaclass name
		metaclassIndex: classIndex
		newClassIndex: metaclassIndex) asRemoteMetaclass.
	loader registerClass: theNewMetaclassClass definition: model metaclass fullyLoaded: false.
		
	self assert: theNewMetaclass basicClass = theNewMetaclassClass.
	^ theNewMetaclass