*PBBuilder
installMetaclassStub
	| aRGBehavior theNewMetaclass theNewMetaclassClass metaclassIndex classIndex |
	" If the metaclass was already created, it will be found in the bootstrapEnvironment dictionary "
	self remote
		ifNotNil: [ :aClass | ^ aClass ].

	" We need to create the metaclass and its respective metaclass (the metaclass class) "
	aRGBehavior := self.
	metaclassIndex := self classLoader newClassIndex.
	classIndex := self classLoader newClassIndex.

	"This is Metaclass"
	theNewMetaclass := self classLoader
		createStubForClassNamed: aRGBehavior name
		metaclassIndex: metaclassIndex
		newClassIndex: classIndex.
	self classLoader registerClass: theNewMetaclass definition: aRGBehavior fullyLoaded: false.

	"This is Metaclass class"
	theNewMetaclassClass := (self classLoader
		createStubForClassNamed: aRGBehavior metaclass name
		metaclassIndex: classIndex
		newClassIndex: metaclassIndex) asRemoteMetaclass.	
	self classLoader registerClass: theNewMetaclassClass definition: aRGBehavior metaclass fullyLoaded: false.
		
	self assert: theNewMetaclass basicClass = theNewMetaclassClass .
	^ theNewMetaclass