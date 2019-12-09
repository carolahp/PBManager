accessing
arguments
	^ { 'bootstrapped/', (self pbBuilder selectedImage ifNil: [''] ifNotNil: [ :img | img basename ] )} 