class roles
classRoles
	"Here you have to explicit a map for all the roles the new seed needs to cover.  An image not fulfilling all the roles may not work.  It's up to you to know if you fulfill all the roles or not"
	"
	The left of the map should be filled with roles.  The corresponding value of each role should be the name of the class in the given seed.
	
	#Class -> #Class.
	#Metaclass -> #Metaclass.
	#Array -> #Array.
	#MethodDictionary -> #MethodDictionary. 
	#CompiledMethod -> #CompiledMethod.
	#Character -> #Character. 
	#ByteArray -> #ByteArray.
	#Association -> #Association.
	#BlockClosure -> #BlockClosure.
	#MethodContext -> #MethodContext.
	#Point -> #Point.
	#Rectangle -> #Rectangle.
	#Process -> #Process.
	#Semaphore -> #Semaphore.
	#ByteString -> #ByteString.
	#ByteSymbol -> #ByteSymbol.
	#True -> #True.
	#False -> #False.
	#UndefinedObject -> #UndefinedObject.
	#Float -> #Float.
	#SmallInteger -> #SmallInteger.
	#LargePositiveInteger -> #LargePositiveInteger.
	#LargeNegativeInteger -> #LargeNegativeInteger.
	#Dictionary -> #Dictionary.									Dictionaries are used to build class variables
	#WideString -> #WideString.								The Wide guys right now are needed here because they commonly appear as literals
	#WideSymbol -> #WideSymbol.
	"
	
	"self subclassResponsibility" self flag: 'migrate roles from PBBootstrapperManual'