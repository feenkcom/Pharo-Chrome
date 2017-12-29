instance creation
emit: aString category: aCategory
	^ self new 
		message: aString;
		category: aCategory;
		emit