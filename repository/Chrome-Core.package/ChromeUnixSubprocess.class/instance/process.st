accessing
process

	^ process ifNil: [ process := OSSUnixSubprocess new ]