private - model creation
printFlagsOn: stream leadingTabCount: anInteger
	| flags |

	flags := OrderedCollection new.
	self deprecated ifTrue: [ flags add: #deprecated ].
	self experimental ifTrue: [ flags add: #experimental ].
	self optional ifTrue: [ flags add: #optional ].
	flags ifEmpty: [ ^ self ].
	anInteger timesRepeat: [ stream tab ].
	stream << 'Flags: '.
	flags 
		do: [ :flag | stream << flag ]
		separatedBy: [ stream << ', ' ].
	stream cr.