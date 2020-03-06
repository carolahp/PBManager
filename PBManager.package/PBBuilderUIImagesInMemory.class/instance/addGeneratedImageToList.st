updating
addGeneratedImageToList
	self listGeneratedImages 
		items: self listGeneratedImages listItems , 
				{PBImageInMemory withImageBuilder: self pbBuilder pbRepository pbBootstrapper builder}.
	self update