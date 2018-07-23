accessing
headless: aBoolean
	"Set whether to launch chrome in headless mode.
	Disable the GPU when headless, and enable when display is present (see https://developers.google.com/web/updates/2017/04/headless-chrome)"

	headless := aBoolean.
	self disableGPU: aBoolean not.