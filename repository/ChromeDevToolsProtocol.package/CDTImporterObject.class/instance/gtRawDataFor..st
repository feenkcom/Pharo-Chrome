ui
gtRawDataFor: aView
	<gtView>

	^ aView forward 
		title: 'Raw data';
		priority: 10;
		object: [ self rawDataDictionary ];
		view: #gtItemsFor: