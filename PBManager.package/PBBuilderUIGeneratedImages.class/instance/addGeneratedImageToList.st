updating
addGeneratedImageToList
	self listGeneratedImages items: {PBImageInMemory new imageBuilder: self pbBuilder pbRepository pbBootstrapper builder}