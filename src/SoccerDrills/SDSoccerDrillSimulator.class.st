"
I am a Soccer Drill simulator based on OpenPonk modelling platform.
"
Class {
	#name : 'SDSoccerDrillSimulator',
	#superclass : 'OPDiagramSimulator',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'initialization' }
SDSoccerDrillSimulator class >> initialClassMapping [

	^ super initialClassMapping
		  at: SDRunArc put: SDRunArcSimulator;
		  at: SDSoccerDrillBase put: SDSoccerDrillBaseSimulator;
		  yourself
]

{ #category : 'initialization' }
SDSoccerDrillSimulator >> initialize [

	super initialize.
	self delay: 5000
]

{ #category : 'testing' }
SDSoccerDrillSimulator >> isSteppable [

	^ self model currentStepNumber <= self model maxStepNumber
]

{ #category : 'actions' }
SDSoccerDrillSimulator >> resetStepNumber [

	self model resetStepNumber
]

{ #category : 'stepping' }
SDSoccerDrillSimulator >> setDefaultStepping [
	"sets default stepping settings"

	super setDefaultStepping.
	self
		fromSteppableElements;
		resetActions;
		addAction: [ :item | item step ]
]

{ #category : 'actions' }
SDSoccerDrillSimulator >> step [

	self isSteppable ifFalse: [ ^ self ].
	super step.
	self model incrementStepNumber
]
