accessing
gtPropertiesFor: aView
	<gtView>

	rawData ifNil: [ ^ aView empty ].
	^ aView forward
		title: 'Properties';
		priority: 10;
		object: [ self gtPropertiesDictionary ];
		view: #gtItemsFor: