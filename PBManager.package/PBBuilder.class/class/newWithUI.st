example methods
newWithUI
	| args |
	args := Dictionary new.
	args at: #path put: (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	args at: #showUI put: true.
	args at: #packagesListBS put: nil ."PBBuilder kernelGroup."
	args at: #packagesListFull put: PBBuilder kernelGroup.
	
	^ self new pbRepository: (PBRepository with: args).