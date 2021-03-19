ui
gtRawDataFor: aView
	<gtView>

	^ aView forward 
		title: 'Raw Data';
		priority: 10;
		object: [ self rawDataDictionary ];
		view: #gtItemsFor: