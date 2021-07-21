testing
systemDictionaryInheritsFromDictionary
	| classSysDic classDic |
	classSysDic := self classSystemDictionary.
	classSysDic cleanErrors.
	classDic := self classDictionary.
	(classSysDic = classDic or: [ classSysDic inheritsFrom: classDic ]) ifFalse: [ classSysDic addError: classSysDic name, ' should inherit from or be the same as ', classDic name ]