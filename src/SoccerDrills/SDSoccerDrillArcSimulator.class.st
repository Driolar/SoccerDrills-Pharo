"
I am the simulator for SDSoccerDrillArc.
"
Class {
	#name : 'SDSoccerDrillArcSimulator',
	#superclass : 'OPEdgeSimulator',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'testing' }
SDSoccerDrillArcSimulator >> isSimulable [
	"could there be any possibility to step? - rigid: should return always true or always false"

	^ true
]

{ #category : 'testing' }
SDSoccerDrillArcSimulator >> isSteppable [
	"can I step right now?"

	^ self model owner currentStepNumber = self model stepNumber
]
