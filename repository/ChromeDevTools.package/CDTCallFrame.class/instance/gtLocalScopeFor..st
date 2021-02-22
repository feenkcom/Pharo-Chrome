ui
gtLocalScopeFor: aView
	<gtView>
	| localScope |

	localScope := self localScope.
	localScope ifNil: [ ^ aView empty ].
	^ aView columnedList 
		title: 'Local Scope';
		priority: 15;
		items: [ localScope properties ];
		column: 'Name' text: [ :item | item name ];
		column: 'Value' text: [ :item | item value ].