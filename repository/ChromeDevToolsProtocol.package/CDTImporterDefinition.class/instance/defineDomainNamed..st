model creation
defineDomainNamed: domainName

	domains 
		detect: [ :domain | domain domain = domainName ]
		ifFound: [ :domain | domain defineModel ]