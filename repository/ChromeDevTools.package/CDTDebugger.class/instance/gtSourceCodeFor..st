ui
gtSourceCodeFor: aView
	<gtView>

	^ aView explicit 
		title: 'Source';
		priority: 10;
		stencil: [
			CDTDebuggerEditor new
				debugger: self;
				look: BrGlamorousCodeEditorLook new;
				styler: JSParser gtStyler;
				yourself ].
