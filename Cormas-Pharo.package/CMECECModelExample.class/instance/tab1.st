tabs
tab1
	| tab |
	tab := self newTab.
	tab
		label: 'Tab1';
		icon: (tab iconNamed: #openIcon);
		model:
			(ClassMethodBrowser new
				classes: Smalltalk globals allClasses;
				yourself).
	^ tab