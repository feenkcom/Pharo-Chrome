ui
gtEventsFor: aView
	<gtView>
	
	self events ifNil: [ ^ aView empty ].
	^ aView list 
		title: 'Events';
		priority: 10;
		items: [ self events sorted: [ :a :b | a name < b name ] ];
		itemText: [ :item | item name ]