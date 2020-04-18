formatting
wrapClassesForMultiList: classes
	^ classes collect: [ :class | { class name . class methodDictionary size } ]