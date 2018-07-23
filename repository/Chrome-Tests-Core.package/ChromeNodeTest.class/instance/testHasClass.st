tests
testHasClass

	| page p1Class |

	page := GoogleChromeTestResource current page.
	p1Class := page rootNode allSelect: [ :each | (each hasClass: 'p1') ].
	self assert: p1Class size equals: 1.
	self assert: p1Class first name equals: 'p'