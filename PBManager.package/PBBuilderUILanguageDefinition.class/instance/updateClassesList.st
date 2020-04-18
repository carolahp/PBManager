refreshing
updateClassesList
	| classes |
	
	classes := (listPackages selectedIndex = 0) 
		ifTrue: [ self pbRepository classesInBootstrap ]
		ifFalse: [ self listPackages selectedItem definedBehaviors ].
	
	classes := classes asOrderedCollection sort: [:a :b | a name < b name ].
	
	listClasses items: classes.
	
	labelClassesNum label: 'Classes: ', (listClasses listItems size) asString