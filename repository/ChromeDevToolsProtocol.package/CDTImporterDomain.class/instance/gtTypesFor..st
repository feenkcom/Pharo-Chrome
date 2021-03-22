ui
gtTypesFor: aView
	<gtView>
	
	self types ifNil: [ ^ aView empty ].
	^ aView list 
		title: 'Types';
		priority: 10;
		items: [ self types sorted: [ :a :b | a id < b id ] ];
		itemText: [ :item | item id ]