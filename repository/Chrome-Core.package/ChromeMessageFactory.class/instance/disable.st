messages
disable 
	"All domains appear to support the enable and disable messages"

	^ Dictionary new 
		at: #method put: self disableMethod;
		yourself