running
browseChanges
	| rbModel browser |

	rbModel := definition optionAt: #rbNamespace.
	browser := ChangesBrowser changes: (rbModel changes changes ).
	browser open
