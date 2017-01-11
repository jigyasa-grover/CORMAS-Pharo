init
initAgents
"To be completed"

	super initAgents.
	self setRandomlyLocatedAgents: CMFireman n: numberOfFiremen.
	self generateSymetricNetworkDensity: 1 forAgents: CMFireman.