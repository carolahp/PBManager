refreshing
update
	self pbBuilderUIImages updateImagesLists.
	self textImageName text: (self pbBuilder pbRepository ifNotNil: [ :repo | repo imageFileName ] ifNil: [''] ).
	self updatePackagesLists