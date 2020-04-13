commands
evaluate: jsExpression
	"Evaluate the supplied javascript expression"

	^ Dictionary new 
		at: #method put: #'Runtime.evaluate';
		at: #params put: 
			(Dictionary new
				at: #expression put: jsExpression;
				yourself);
		yourself