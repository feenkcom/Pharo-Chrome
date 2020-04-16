private
scheduleUpdateSourceCode

	BlUseAsyncFeatures 
		ifEnabledDo: [ BlTktWorkerProvider highUIExternalResourceBoundPool schedule: self queueEntry ] 
		otherwise: [ self queueEntry execute ].