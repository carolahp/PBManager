accessing
selectedImage
	
	^ self pbBuilder bootstrapping 
			ifTrue: [ | repo |
				" We return a new ImageInMemory in the case the pbBuilder is in the middle of bootstrapping "
				repo := self pbBuilder pbRepository.
				PBImageInMemory 
					withImageBuilder:  repo pbBootstrapper builder 
					imageName: repo imageFileName ]
			ifFalse: [ self listGeneratedImages selectedItem ]