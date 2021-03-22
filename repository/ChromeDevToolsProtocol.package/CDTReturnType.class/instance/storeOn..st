printing
storeOn: aStream

	aStream
		<< self class name;
			<< ' new'; cr;
		tab; << 'name: '; print: name; << ';'; cr;
		tab; << 'description: '; print: description; << ';'; cr;
		tab; << 'optional: '; print: optional; << ';'; cr;
		tab; << 'items: '; print: items; << ';'; cr;
		tab; << 'type: '; print: type; 
			<< '.'; cr.