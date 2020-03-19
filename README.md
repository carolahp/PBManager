# PBManager
Pharo Bootstrap manager with UI

## Quick Start

First load the Pharo Bootstrap as a prerequisite. This baseline installs also Espell and the VM Maker lir

```Smalltalk
[ Metacello new 
	repository: 'github://carolahp/Pharo80Bootstrap';
	baseline: 'Pharo80Bootstrap';
	load ] on: Warning do: #resume
```

Then load PBManager
```Smalltalk
Metacello new 
	repository: 'github://carolahp/PBManager';
	onConflict: [ :ex | ex useLoaded ];
	baseline: 'PBManager';
	load
```
