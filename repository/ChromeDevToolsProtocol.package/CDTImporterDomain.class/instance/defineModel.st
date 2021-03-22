model creation
defineModel

	self deprecated ifTrue: [ ^ self ].
	self types do: [ :type | type defineModel ].
	self events do: [ :event | event defineModel ].
	self commands do: [ :command | command defineModel ].