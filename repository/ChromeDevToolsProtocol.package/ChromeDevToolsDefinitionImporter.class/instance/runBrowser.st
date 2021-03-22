running
runBrowser

	(self definitionFrom: browserFile)
			optionAt: #classNamePrefix put: classNamePrefix;
			defineModel.