running
createVMStubs

	| specialObjectsArray |
	super log: 'creating initial Objects needed by the VM'.
	
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
	
	objectSpace nilObject setClass: (self createStubForClassWithRole: #UndefinedObject).
	objectSpace falseObject setClass: (self createStubForClassWithRole: #False).
	objectSpace trueObject setClass: (self createStubForClassWithRole: #True).
	
	objectSpace backend smallIntegerClass: (self createStubForClassWithRole: #SmallInteger).
	objectSpace backend characterClass: (self createStubForClassWithRole: #Character).
	objectSpace backend byteSymbolClass: (self createStubForClassWithRole: #ByteSymbol).
	objectSpace backend byteStringClass: (self createStubForClassWithRole: #ByteString).
	objectSpace backend byteArrayClass: (self createStubForClassWithRole: #ByteArray).
	objectSpace backend associationClass: (self createStubForClassWithRole: #Association).
	objectSpace backend arrayClass: (self createStubForClassWithRole: #Array).
	objectSpace backend symbolTableClass: objectSpace backend byteSymbolClass.
	objectSpace backend largeNegativeIntegerClass: (self createStubForClassWithRole: #LargeNegativeInteger).
	objectSpace backend largePositiveIntegerClass: (self createStubForClassWithRole: #LargePositiveInteger).
	objectSpace backend methodClass: (self createStubForClassWithRole: #CompiledMethod).
	objectSpace backend floatClass: (self createStubForClassWithRole: #Float).
	objectSpace backend contextClass: (self createStubForClassWithRole: #MethodContext).
	objectSpace backend processClass: (self createStubForClassWithRole: #Process).
	objectSpace backend blockClass: (self createStubForClassWithRole: #BlockClosure).
	"objectSpace backend fullBlockClass: (self createStubForClassWithRole: #FullBlockClosure)."
	objectSpace backend messageClass: (self createStubForClassWithRole: #Message).
	objectSpace backend semaphoreClass: (self createStubForClassWithRole: #Semaphore).
	
	"Point is required in the special objects array because it is used to instantiate point objects faster.
	If we do not put it here, the VM will crash.
	Lots of tests in kernel use it."
	objectSpace backend pointClass: (self createStubForClassWithRole: #Point).
	
	objectSpace backend processorAssociation: self newAssociation.
	objectSpace backend processorAssociation
		instanceVariableAtIndex: 2 put: (self createStubForClassWithRole: #ProcessorScheduler) basicNew.
	objectSpace backend specialSelectors: (self newArray: 64)