class
generateAccessors
	| source |

	self accessorNames do: [ :accessorName |
		source := String streamContents: [ :stream |
			stream 
				<< accessorName; cr;
				tab;
				<< '"Auto-generated accessor method"'; cr; cr;
				tab;
				<< '^ rawData at: ';
				print: accessorName asString ].
		(RBAddMethodChange
			compile: source
			in: self
			classified: #accessing)
				execute. ].