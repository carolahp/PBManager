class roles
fixProtoObjectClassSuperclass
	| object objectClass class |
	object := self classWithRole: #ProtoObject.
	objectClass := self classNamed: (object name, ' class').
	class := self classWithRole: #Class.
	objectClass superclass: class.
	