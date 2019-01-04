example methods
newWithUI
	| args repo |
	args := Dictionary new.
	args at: #path put: (Smalltalk os environment at: 'BOOTSTRAP_REPOSITORY'),'/src'.
	args at: #showUI put: true.
	args at: #packagesListBS put: nil ."PBBuilder kernelGroup."
	args at: #packagesListFull put: PBBuilder kernelGroup.
	
	repo := PBRepository with: args.