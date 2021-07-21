*PBManager
finalSuperclass
	| class |
	class := self.
	[ class superclass ] whileNotNil: [ class := class superclass ].
	^ class