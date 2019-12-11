accessing
imageFileName
	^ imageFileName ifNil: [ imageFileName := self languageName copyReplaceAll: ' ' with: '_' ] 