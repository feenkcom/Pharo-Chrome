gt-extension
gtCommandsFor: aView
	<gtView>
	
	self commands ifNil: [ ^ aView empty ].
	^ aView list 
		title: 'Commands';
		priority: 10;
		items: [ self commands sorted: [ :a :b | a name < b name ] ];
		itemText: [ :item | item name ]