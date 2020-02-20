accessing
allClassesAndTraits
	^ super allClassesAndTraits select: [ :item | self isRingResolved ]