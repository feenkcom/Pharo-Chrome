ui
gtSourceCodeFor: aView
	<gtView>

	self hasSourceCode ifFalse: [ ^ aView empty ].
	^ aView explicit 
		title: 'Source';
		priority: 10;
		stencil: [ | editor |
			editor := BrEditor new
				text: self sourceText;
				look: BrGlamorousCodeEditorLook new;
				styler: JSParser gtStyler.
			self lineNumber > 5 ifTrue:
				[ editor 	scrollToPosition: self lineNumber - 5 ].
			editor ]
