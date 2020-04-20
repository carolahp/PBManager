initialization
initializeIndexes
	| pcClass pcContext pcProcess pcProcessorScheduler pcDictionary pcSmalltalk pcAssociation pcClassVariable |
	 
	" Class "
	pcClass := (environment classWithRole: #Class) name.
	classNameIndex := self lookup: #name in: pcClass.
	classMethodDictionaryIndex := self lookup: #methodDict in: pcClass.
	classSuperclassIndex := self lookup: #superclass in: pcClass.
	classInstanceVariableNamesIndex := self lookup: #instVarNames in: pcClass.
	classFormatIndex := self lookup: #format in: pcClass.
	classNumberOfVariables := self numberOfInstanceVariablesOf: pcClass.
	listOfClassSlots := self allSlotsOf: pcClass.
	classPoolIndex := self lookup: #classVariables in: pcClass.
	classSharedPoolsIndex := self lookup: #sharedPools in: #Class.
	metaclassThisClassIndex := self lookup: #soleInstance in: (environment classWithRole: #Metaclass) name.
	
	" Context "
	pcContext := (environment classWithRole: #Context) name.	
	contextPcIndex := self lookup: #pc in: pcContext.
	contextSenderIndex := self lookup: #sender in: pcContext.
	contextStackpIndex := self lookup: #stackp in: pcContext.
	contextMethodIndex := self lookup: #method in: pcContext.
	contextReceiverIndex := self lookup: #receiver in: pcContext.
	contextClosureOrNilIndex := self lookup: #closureOrNil in: pcContext.
		
	" Process "
	pcProcess := (environment classWithRole: #Process) name.
	processContextIndex := self lookup: #suspendedContext in: pcProcess.
	processPriorityIndex := self lookup: #priority in: pcProcess.
	processPriorityListIndex := self lookup: #myList in: pcProcess.
	processNextLinkIndex := self lookup: #nextLink in: pcProcess.
	"processNameIndex := self lookup: #name in: #Process."
	
	" SmalltalkImage "
	pcSmalltalk := (environment classWithRole: #Smalltalk) name.
	smalltalkImageGlobalsIndex := self lookup: #globals in: pcSmalltalk.
	
	" ProcessorScheduler "
	pcProcessorScheduler := (environment classWithRole: #ProcessorScheduler) name.
	processSchedulerActiveProcessIndex := self lookup: #activeProcess in: pcProcessorScheduler.
	
	" Dictionary "
	pcDictionary := (environment classWithRole: #Dictionary) name.
	dictionaryArrayIndex := self lookup: #array in: pcDictionary.
	
	" Association "
	pcAssociation := (environment classWithRole: #Association) name.
	associationKeyIndex := self lookup: #key in: pcAssociation.
	associationValueIndex := self lookup: #value in: pcAssociation.
	
	" Class Variable "
	pcClassVariable := (environment classWithRole: #ClassVariable) name.
	classVariableKeyIndex := self lookup: #key in: pcClassVariable