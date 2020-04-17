initialization
initialize 
	| imagesDirectory vmVersion |
	super initialize.
	
	imagesDirectory := self pbBuilder locationOfBootstrappedImages.
	vmVersion := self pbBuilder vmTargetVersion.
	
	" Check if the Pharo VM was already downloaded in the imagesDirectory "
	((imagesDirectory / 'pharo') exists 
	and: (imagesDirectory / 'pharo-local') exists) ifTrue: [
		^ self
		].
	" Download the Pharo VM "
	self pbBuilder 
		runBashScript: 'wget' 
		arguments: { 'https://get.pharo.org/vm', vmVersion asString }
		workingDirectory: imagesDirectory pathString
		withTimeout: 10 seconds.
	self pbBuilder 
		runBashScript: 'bash' 
		arguments: { './vm', vmVersion asString } workingDirectory: imagesDirectory pathString
		withTimeout: 5 seconds.
	self pbBuilder 
		runBashScript: 'rm' 
		arguments: { './vm', vmVersion asString } workingDirectory: imagesDirectory pathString
		withTimeout: 5 seconds