running
createVMStubs

	| specialObjectsArray |
	super log: 'creating initial Objects needed by the VM'.
	self halt.
	PBLanguageVisualization new visualizeClassHyerarchyAndInstSpec: self systemDefinition. 
	
	self createNil.	
	self createFalse.
	self createTrue.

	self allocateFreeLists.	
	self allocateClassTable.
	
	specialObjectsArray := self objectSpace backend 
		createObjectWithFormat: Array format withSize: 60 classIndex: self arrayClassIndex.
	objectSpace specialObjectsArray: specialObjectsArray.
	objectSpace nilObject: objectSpace nilObject.
	objectSpace falseObject: objectSpace falseObject.
	objectSpace trueObject: objectSpace trueObject.
	
	objectSpace nilObject setClass: (self createStubForClassNamed: #PCUndefinedObject).
	objectSpace falseObject setClass: (self createStubForClassNamed: #PCFalse).
	objectSpace trueObject setClass: (self createStubForClassNamed: #PCTrue).
	
	objectSpace backend smallIntegerClass: (self createStubForClassNamed: #PCSmallInteger).
	objectSpace backend characterClass: (self createStubForClassNamed: #PCCharacter).
	objectSpace backend byteSymbolClass: (self createStubForClassNamed: #PCSymbol).
	objectSpace backend byteStringClass: (self createStubForClassNamed: #PCString).
	objectSpace backend byteArrayClass: (self createStubForClassNamed: #PCByteArray).
	objectSpace backend associationClass: (self createStubForClassNamed: #PCAssociation).
	objectSpace backend arrayClass: (self createStubForClassNamed: #PCArray).
	objectSpace backend symbolTableClass: objectSpace backend byteSymbolClass.
	objectSpace backend largeNegativeIntegerClass: (self createStubForClassNamed: #PCLargeNegativeInteger).
	objectSpace backend largePositiveIntegerClass: (self createStubForClassNamed: #PCLargePositiveInteger).
	objectSpace backend methodClass: (self createStubForClassNamed: #PCCompiledMethod).
	objectSpace backend floatClass: (self createStubForClassNamed: #PCFloat).
	objectSpace backend contextClass: (self createStubForClassNamed: #PCMethodContext).
	objectSpace backend processClass: (self createStubForClassNamed: #PCProcess).
	objectSpace backend blockClass: (self createStubForClassNamed: #PCBlock).
	"objectSpace backend fullBlockClass: (self createStubForClassNamed: #PCFullBlockClosure)."
	objectSpace backend messageClass: (self createStubForClassNamed: #PCMessage).
	objectSpace backend semaphoreClass: (self createStubForClassNamed: #PCSemaphore).
	
	"Point is required in the special objects array because it is used to instantiate point objects faster.
	If we do not put it here, the VM will crash.
	Lots of tests in kernel use it."
	objectSpace backend pointClass: (self createStubForClassNamed: #PCPoint).
	
	objectSpace backend processorAssociation: (self classNamed: #PCAssociation) mirror basicNew.
	objectSpace backend processorAssociation
		instanceVariableAtIndex: 2 put: (self createStubForClassNamed: #PCProcessorScheduler) basicNew.
	objectSpace backend specialSelectors: ((self classNamed: #PCArray) mirror basicNew: 64)