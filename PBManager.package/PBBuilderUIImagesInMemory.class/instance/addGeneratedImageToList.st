updating
addGeneratedImageToList
	self listGeneratedImages 
		items: self listGeneratedImages listItems , 
				{PBImageInMemory new imageBuilder: self pbBuilder pbRepository pbBootstrapper builder}.
	self update