versions
version04: spec
	<version: '0.4' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 0.4'.
		spec author: 'SergeStinckwich'.
		spec timestamp: '4/2/2015 10:26'.
		spec 
			package: 'Cormas-Core' with: 'Cormas-Core-SergeStinckwich.37';
			package: 'Cormas-HotDraw-Tools' with: 'Cormas-HotDraw-Tools-SergeStinckwich.4';
			package: 'Cormas-Tests-Core' with: 'Cormas-Tests-Core-SergeStinckwich.5';
			package: 'Cormas-Model-ECEC' with: 'Cormas-model-ECEC-SergeStinckwich.4';
			package: 'Cormas-Model-Conway' with: 'Cormas-Model-Conway-SergeStinckwich.3';
			package: 'Cormas-Model-FireAutomata' with: 'Cormas-Model-FireAutomata-SergeStinckwich.3'. ].
