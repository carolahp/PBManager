updating
update
	self textInputImageName text: (self pbBuilder pbRepository ifNotNil: [ :repo | repo imageFileName ] ifNil: [''] )