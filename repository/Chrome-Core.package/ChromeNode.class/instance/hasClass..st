testing
hasClass: aClassNameString
	"Answer a boolean indicating whether the receiver has the supplied value in its class"

	^ (((self attributeAt: 'class' ifAbsent: [ '' ]) 
		substrings: ' ') 
			collect: [ :s | s trim ]) 
				includes: aClassNameString.