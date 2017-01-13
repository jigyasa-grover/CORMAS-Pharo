tabs
tab2
	| tab |
	tab := self newTab.
	tab
		label: 'Tab2';
		icon: (tab iconNamed: #nautilusIcon);
		model:
			(ClassMethodBrowser new
				classes: Smalltalk globals allClasses;
				yourself).
	^ tab