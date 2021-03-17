ui
gtPropertiesDictionary

	^ { 
		#configurable -> self configurable.
		#enumerable -> self enumerable.
		#isOwn -> self isOwn.
		#name -> self name.
		#value -> self value. } asDictionary 