class roles
fixProtoObjectClassSuperclass
	| protObjectClass |
	protObjectClass := self classProtoObject.
	protObjectClass classSide superclass: self classClass
	