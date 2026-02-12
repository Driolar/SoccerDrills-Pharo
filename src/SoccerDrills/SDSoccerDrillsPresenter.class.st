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

	^ super buttonItems
		  add: (self newButton
				   label: 'Play';
				   iconName: #go;
				   help: 'Steps every five seconds';
				   action: [ self diagramSimulator repeat ]);
		  add: (self newButton
				   label: 'Stop';
				   iconName: #stop;
				   help: 'Stops the simulation';
				   action: [ self diagramSimulator stop ]);
		  yourself
]

{ #category : 'private - hooks' }
SDSoccerDrillsPresenter >> loadSimulation [
	"prepares simulation - called with every reload"

	super loadSimulation.
	diagramSimulator
		when: OPSimulatorStepped
		do: [ :event |
				self updateColors.
				self startAnimations ]
		for: self
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
				(controller diagramElement roassalAnimation
					 duration: (Duration milliSeconds: self diagramSimulator delay);
					 yourself) ]
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
