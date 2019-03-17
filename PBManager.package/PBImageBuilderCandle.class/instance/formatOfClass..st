running
formatOfClass: aRFiClass 
	
	"A class format is composed by"
	"<5 bits inst spec><16 bits inst size>"
	| newHeap instSize newInstSpec |

	newHeap := objectSpace backend simulator objectMemory.

	((aRFiClass name = 'PCSmallInteger')
	 or: [(aRFiClass name = 'PCCharacter')
	 "or: [aRFiClass name = 'SmallFloat64']"]) ifTrue:
		[^ newHeap integerObjectOf: newHeap instSpecForImmediateClasses << 16].
	instSize := aRFiClass instSize.
	newInstSpec := self instSpecOfClass: aRFiClass.
	^newInstSpec << 16 + instSize