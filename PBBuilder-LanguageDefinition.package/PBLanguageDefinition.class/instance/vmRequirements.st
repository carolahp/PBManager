vm-requirements
vmRequirements
	^ vmRequirements ifNil: [ vmRequirements := PBVirtualMachineRequirements new ]