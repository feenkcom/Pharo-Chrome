ui
gtSourceCodeFor: aView
	<gtView>

	^ aView explicit 
		title: 'Source';
		priority: 10;
		stencil: [
			NodeJSDebuggerEditor new
				debugger: self;
				look: BrGlamorousCodeEditorLook new;
				styler: JSParser gtStyler;
				yourself ].
