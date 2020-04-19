accessing
temps: aCollectionOfAssociations
	temps := aCollectionOfAssociations collect: [ :assoc |
		assoc key -> (assoc value asRemoteObjectInObjectSpace: imageBuilder objectSpace) ] 