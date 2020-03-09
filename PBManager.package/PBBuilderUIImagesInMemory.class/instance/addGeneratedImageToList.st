updating
addGeneratedImageToList
	self listGeneratedImages 
		items: self listGeneratedImages listItems , 
				{PBImageInMemory 
					withImageBuilder: self pbBuilder pbRepository pbBootstrapper builder
					 imageName: self pbBuilder pbRepository imageFileName }.
				
	self textInputImageName text: self pbBuilder pbRepository imageFileName. 
	
	self update