accessing
installOnlyMarkedMethods
	^ installOnlyMarkedMethods ifNil: [ installOnlyMarkedMethods := false ]