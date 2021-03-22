accessing
gtPropertiesFor: aView
	<gtView>

	(properties isNil or: [ properties isEmpty ]) ifTrue: [ ^ aView empty ].
	^ aView list 
		title: 'Properties';
		priority: 10;
		items: [ properties ];
		itemText: [ :item | item name ]