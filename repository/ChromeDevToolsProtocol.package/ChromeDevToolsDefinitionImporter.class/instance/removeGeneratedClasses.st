preparation
removeGeneratedClasses
	"Remove all the previously generated classes, i.e. subclasses of rootClass.
	This must be called manually."

	{ CDTPCommand. CDTPEvent. CDTPType. } do: [ :cls |
		self removeSubclassesOf: cls ].
	"TDAPProtocolVisitor methodDict keysDo: [ :key |
		TDAPProtocolVisitor removeSelector: key ]."