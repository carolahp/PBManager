accessing
classRoles
	^ classRoles ifNil: [ classRoles := {
		#ProtoObject -> #PCObject.
		#ProcessorScheduler -> #PCProcessorScheduler.
		#Context -> #PCMethodContext.
		#Class -> #PCClass.
		#Metaclass -> #PCMetaclass.
		#Array -> #PCArray.
		#MethodDictionary -> #PCMethodDictionary . 
		#CompiledMethod -> #PCCompiledMethod.
		#Character -> #PCCharacter. 
		#ByteArray -> #PCByteArray.
		#Association -> #PCAssociation.
		#BlockClosure -> #PCBlock.
		#Point -> #PCPoint.
		#Process -> #PCProcess.
		"#Semaphore -> #PCSemaphore."
		#ByteString -> #PCString.
		#Symbol -> #PCSymbol.
		"#ByteSymbol -> #PCSymbol."
		#True -> #PCTrue.
		#False -> #PCFalse.
		#UndefinedObject -> #PCUndefinedObject.
		#Float -> #PCFloat.
		#SmallInteger -> #PCSmallInteger.
		#LargePositiveInteger -> #PCLargePositiveInteger.
		#LargeNegativeInteger -> #PCLargeNegativeInteger.
		#Dictionary -> #PCDictionary.
		#Message -> #PCMessage.
		#SmalltalkImage -> #PCSmalltalk. "optional"
		"#SystemDictionary -> #PCDictionary"
		} asDictionary ] 