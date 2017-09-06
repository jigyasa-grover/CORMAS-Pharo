# CORMAS: Common-pool Resources and Multi-mate Agent Simulations

CORMAS is an ABM tool based on the Cincom® VisualWorks® platform dedicated to natural and common-pool resources management. CORMAS is intended to facilitate the design, monitoring and analysis of ABM scenarios. As an open-source and free software (MIT license), it is used by an international community of researchers willing to understand the relationships between societies and their environment. In the purpose to deal with natural renewable resources management, CORMAS is mainly oriented towards the representation of interactions between stakeholders and their environment with a specific focus on the interactions between natural and social dynamics. 

> Reference: J. Grover, S. Stinckwich, N. Papoulias and P. Bommel, "Pragmatic Insights: Live UIs for Agent-based Modelling in Pharo", Proceedings of the 12th Edition of the International Workshop on Smalltalk Technologies, IWST’17.

# Our spatial interface for CORMAS in Pharo

As a framework that proposes predefined classes and a set of visualization tools, the CORMAS environment is intended to facilitate the implementation of ABM systems as well as simulation monitoring and analysis. CORMAS currently uses *Cincom® VisualWorks®* (VW), a proprietary cross-platform programming environment based on Smalltalk. We are trying to recreate the platform itself, by taking advantage of modern technological advancements in Pharo like the *Roassal visualization engine*, the *Spec UI framework*, the *Glamorous Toolkit*, *PetitParser* and others. In this work, we mainly focus on porting the spatial interface of CORMAS in Pharo.

The present Pharo extension of CORMAS administered on the ECEC model can be run by executing the script `self new openWithSpec` on CORMAS Pharo package or simply using the `example` on the class side of the CORMAS Pharo package and selecting the CMECEC Model from the drop-down load menu in the toolbar at the top of the window that opens up.

<p float="center">
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-LoadingModels.png" width="400" />
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-RunningSimulation.png" width="400" /> 
</p>

<p float="center">
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-OnHoverInfo.png" width="400" />
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-CustomizedInspector.png" width="400" /> 
</p>

<p float="center">
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-DataViz.png" width="400" />
  <img src="https://github.com/jigyasa-grover/CORMAS-Pharo/blob/master/Documentation/figures/CormasPharo-UML.jpg" width="400" /> 
</p>

> Reference: J. Grover, S. Stinckwich, N. Papoulias and P. Bommel, "Pragmatic Insights: Live UIs for Agent-based Modelling in Pharo", Proceedings of the 12th Edition of the International Workshop on Smalltalk Technologies, IWST’17.
