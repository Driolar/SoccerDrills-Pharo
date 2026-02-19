Class {
	#name : 'SDSoccerDrillGoalSimulator',
	#superclass : 'OPElementSimulator',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'testing' }
SDSoccerDrillGoalSimulator >> isSimulable [
	"could there be any possibility to step? - rigid: should return always true or always false"

	^ false
]

{ #category : 'testing' }
SDSoccerDrillGoalSimulator >> isSteppable [
	"can I step right now?"

	^ false
]
