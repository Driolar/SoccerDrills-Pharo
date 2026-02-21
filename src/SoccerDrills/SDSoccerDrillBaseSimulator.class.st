"
I am the simulator for SDSoccerDrillBase.
"
Class {
	#name : 'SDSoccerDrillBaseSimulator',
	#superclass : 'OPElementSimulator',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'testing' }
SDSoccerDrillBaseSimulator >> isSimulable [
	"could there be any possibility to step? - rigid: should return always true or always false"

	^ false
]

{ #category : 'testing' }
SDSoccerDrillBaseSimulator >> isSteppable [
	"can I step right now?"

	^ false
]
