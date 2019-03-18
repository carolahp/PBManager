class roles
fixProtoObjectClassSuperclass
	| object objectClass |
	object := (self classWithRol: #ProtoObject).
	objectClass := self classNamed: (object name, ' class').
	objectClass superclass: object.
	