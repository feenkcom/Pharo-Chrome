private - model creation
asReturnType

	^ CDTReturnType new 
		name: name;
		description: description;
		optional: optional;
		type: self pharoType;
		items: self pharoItems.