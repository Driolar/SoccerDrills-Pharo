"
I simulate the player run from source to target base.
"
Class {
	#name : 'SDRunArcSimulator',
	#superclass : 'OPEdgeSimulator',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'testing' }
SDRunArcSimulator >> isSimulable [
	"could there be any possibility to step? - rigid: should return always true or always false"

	^ true
]

{ #category : 'testing' }
SDRunArcSimulator >> isSteppable [
	"can I step right now?"

	^ self model owner currentStepNumber = self model stepNumber
]
