accessing
arguments
	| words |
	words := ' ' split: self textBashInput text. 
	^ words copyFrom: 2 to: words size