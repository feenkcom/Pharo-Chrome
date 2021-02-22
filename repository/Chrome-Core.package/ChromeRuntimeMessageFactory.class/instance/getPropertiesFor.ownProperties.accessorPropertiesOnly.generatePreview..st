commands
getPropertiesFor: remoteObjectId ownProperties: ownPropertiesBoolean accessorPropertiesOnly: accessorPropertiesOnlyBoolan generatePreview: generatePreviewBoolean
	"Returns properties of a given object. Object group of the result is inherited from the target object."

	^ Dictionary new 
		at: #method put: #'Runtime.getProperties';
		at: #params put:
			(Dictionary new 
				at: #objectId put: remoteObjectId;
				at: #ownProperties put: ownPropertiesBoolean;
				at: #accessorPropertiesOnly put: accessorPropertiesOnlyBoolan;
				at: #generatePreview put: generatePreviewBoolean;
				yourself);
		yourself