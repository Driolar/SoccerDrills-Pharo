"
I am the Soccer Drills presenter based on OpenPonk.
"
Class {
	#name : 'SDSoccerDrillsPresenter',
	#superclass : 'OPSimulationGUI',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'toolbar' }
SDSoccerDrillsPresenter class >> toolbarMenu: aBuilder [

	<opEditorToolbarMenu: #SDSoccerDrillPlugin>
	self toolbarMenuItemFor: aBuilder
]

{ #category : 'private - hooks' }
SDSoccerDrillsPresenter >> buttonItems [

	^ OrderedCollection
		  with: (self newButton
				   label: 'Play';
				   iconName: #go;
				   help: 'Steps every five seconds until drill end.';
				   action: [ self diagramSimulator repeat ])
		  with: (self newButton
				   label: 'Stop';
				   iconName: #stop;
				   help:
					   'Stops the simulation after current step and resets to the drill start.';
				   action: [ self diagramSimulator stop ])
]

{ #category : 'private - hooks' }
SDSoccerDrillsPresenter >> loadSimulation [
	"prepares simulation - called with every reload"

	super loadSimulation.
	diagramSimulator
		when: OPSimulatorStepped do: [ :event |
				self updateColors.
				self startAnimations ]
		for: self;
		when: OPSimulatorStoppedRun do: [ :event | self reset ] for: self
]

{ #category : 'updating' }
SDSoccerDrillsPresenter >> reset [

	diagramSimulator resetStepNumber.
	self resetColors
]

{ #category : 'updating' }
SDSoccerDrillsPresenter >> resetColors [

	diagramSimulator simulableElements do: [ :element |
			| controller |
			controller := self diagramController controllerForModel:
				              element model.
			controller diagramElement roassalShape color: Color black ].
	self diagramController canvas signalUpdate
]

{ #category : 'private - hooks' }
SDSoccerDrillsPresenter >> simulatorClass [
	"diagram simulator class"

	^ SDSoccerDrillSimulator
]

{ #category : 'updating' }
SDSoccerDrillsPresenter >> startAnimations [

	diagramSimulator steppableElements do: [ :element |
			| controller |
			controller := self diagramController controllerForModel:
				              element model.
			self diagramController canvas addAnimation:
				(controller diagramElement roassalAnimationWithDuration:
					 (Duration milliSeconds: self diagramSimulator delay)) ]
]

{ #category : 'updating' }
SDSoccerDrillsPresenter >> updateColors [

	diagramSimulator simulableElements do: [ :element |
			| controller |
			controller := self diagramController controllerForModel:
				              element model.
			controller diagramElement roassalShape color: (element isSteppable
					 ifTrue: [ Color green ]
					 ifFalse: [ Color black ]) ].
	self diagramController canvas signalUpdate
]
