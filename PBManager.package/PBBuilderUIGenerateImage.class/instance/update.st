updating
update
	| repository |
	repository := self pbBuilder pbRepository.
	self textInputImageName text: (repository ifNotNil: [ :repo | repo imageFileName ] ifNil: [''] ).
	self setEnabledStatusOfButtons: repository isNotNil