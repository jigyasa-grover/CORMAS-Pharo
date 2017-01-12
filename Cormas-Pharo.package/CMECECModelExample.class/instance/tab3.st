tabs
tab3
	| tab |
	tab := self newTab.
	tab
		label: 'Tab3';
		icon: (tab iconNamed: #nautilusIcon);
		model:
			(ClassMethodBrowser new
				classes: Smalltalk globals allClasses;
				yourself).
	^ tab