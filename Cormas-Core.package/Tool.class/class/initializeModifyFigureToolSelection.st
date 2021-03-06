tool states
initializeModifyFigureToolSelection
	"This method was automatically generated by the HotDraw ToolStateMachineEditor.
	To edit this method, evaluate the comment below"
	"| states transitions stateTable |
	states := ((Core.OrderedCollection new) add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'ModifyFigure Tool Select'; instVarAt: 3 put: '[:tool :event | 
| drawing lastPoint figure | 
drawing := tool drawing.
lastPoint := tool cursorPointFor: event.
tool valueAt: #lastPoint put: lastPoint.
figure := drawing figureAt: lastPoint.
figure class = CormasNS.Kernel.VectorialView 
	ifFalse:[
	figure isDistortable: true.
	tool sensor shiftDown
		ifTrue: [drawing toggleSelection: figure]
		ifFalse: [(drawing isSelected: figure) ifFalse: [drawing selection: figure]] ] 
	ifTrue:[drawing clearSelections]]'; instVarAt: 4 put: (Core.Point x: 46 y: 51); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'End State'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Core.Point x: 55 y: 253); instVarAt: 5 put: true; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'Selection Tool Move Figure'; instVarAt: 3 put: '[:tool :event | 
| delta newPoint |
newPoint := tool cursorPointFor: event.
delta := newPoint - (tool valueAt: #lastPoint).
tool valueAt: #lastPoint put: newPoint.
tool drawing selections do: [:each | each translateBy: delta]]'; instVarAt: 4 put: (Core.Point x: 278 y: 146); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); yourself).
	stateTable := Dictionary new.
	states do: [:each | stateTable at: each name put: each].

	transitions := OrderedCollection new.
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'ModifyFigure Tool Select'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 116.895 y: 82.668); add: (Core.Point x: 90.1051 y: 252.335); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'ModifyFigure Tool Select'); to: (stateTable at: 'Selection Tool Move Figure'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 160.697 y: 81.7148); add: (Core.Point x: 323.26 y: 146.467); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Selection Tool Move Figure'); to: (stateTable at: 'Selection Tool Move Figure'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 385.499 y: 145.375); add: (Core.Point x: 413 y: 104); add: (Core.Point x: 462 y: 106); add: (Core.Point x: 421.062 y: 150.359); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'Selection Tool Move Figure'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 322.75 y: 176.547); add: (Core.Point x: 117.306 y: 257.365); yourself); yourself).
	ToolStateMachineEditor openWithStates: states connections: transitions"
	
	Tool states
		at: 'ModifyFigure Tool Select'
		put:
			(ToolState
				name: 'ModifyFigure Tool Select'
				command:
					[:tool :event | 
					| drawing lastPoint figure |
					drawing := tool drawing.
					lastPoint := tool cursorPointFor: event.
					tool valueAt: #lastPoint put: lastPoint.
					figure := drawing figureAt: lastPoint.
					figure class = VectorialView
						ifFalse:
							[figure isDistortable: true.
							tool sensor shiftDown
								ifTrue: [drawing toggleSelection: figure]
								ifFalse:
									[(drawing isSelected: figure) ifFalse: [drawing selection: figure]]]
						ifTrue: [drawing clearSelections]]).
	Tool states
		at: 'End State'
		put:
			(EndToolState
				name: 'End State'
				command: [:tool :event | ]).
	Tool states
		at: 'Selection Tool Move Figure'
		put:
			(ToolState
				name: 'Selection Tool Move Figure'
				command:
					[:tool :event | 
					| delta newPoint |
					newPoint := tool cursorPointFor: event.
					delta := newPoint - (tool valueAt: #lastPoint).
					tool valueAt: #lastPoint put: newPoint.
					tool drawing selections do: [:each | each translateBy: delta]]).
	(Tool stateFor: 'ModifyFigure Tool Select')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Selection Tool Move Figure');
				yourself).
	(Tool stateFor: 'ModifyFigure Tool Select')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'Selection Tool Move Figure')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'Selection Tool Move Figure')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'Selection Tool Move Figure');
				yourself)