updating
addGeneratedImageToList
	| newImage pbRepo |
	pbRepo := self pbBuilder pbRepository.
	newImage := PBImageInMemory 
					withImageBuilder: pbRepo pbBootstrapper builder
					 imageName: pbRepo imageFileName.
	newImage classesAreInstalled: pbRepo classesAreInstalled;
				methodsAreInstalled: pbRepo methodsAreInstalled;
				processIsInstalled: pbRepo processIsInstalled.				
	self listGeneratedImages 
		items: self listGeneratedImages listItems , 
				{ newImage }.
				
	self textInputImageName text: self pbBuilder pbRepository imageFileName. 
	
	self update