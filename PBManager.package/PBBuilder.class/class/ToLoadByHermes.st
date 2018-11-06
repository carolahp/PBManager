temporary
ToLoadByHermes
	^ ((((self AdditionalPackages union:
		self MultilingualGroup) union:
		self CompilerGroup) union:
		self FileSystemGroup) union: 
		#('Hermes-Extensions')) union: 
		self SUnitGroup