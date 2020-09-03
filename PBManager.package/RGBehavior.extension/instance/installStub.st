*PBManager
installStub
		
	| newClass newMetaclass remoteMetaclassClass |	
		
	"this is the class with role metaclass installed in the kernel"
	remoteMetaclassClass := self parent classMetaclass remote 
		ifNil: [
			self parent classMetaclass installMetaclassStub
		].
	newMetaclass := remoteMetaclassClass basicNew asRemoteMetaclass.
	newMetaclass format: self classSide format.
	newMetaclass setHashBitsTo: self classLoader newClassIndex.
	self classLoader registerClass: newMetaclass definition: self metaclass fullyLoaded: false.
	
	newClass := newMetaclass basicNew asRemoteClass.
	newClass format: self format.
	newClass setHashBitsTo: self classLoader newClassIndex.
	self classLoader registerClass: newClass definition: self fullyLoaded: false.
	self assert: newClass basicClass = newMetaclass .
	^ newClass