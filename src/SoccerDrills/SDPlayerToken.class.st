"
I am a player executing the drill.
"
Class {
	#name : 'SDPlayerToken',
	#superclass : 'OPToken',
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'testing' }
SDPlayerToken >> isSimulable [
	"could there be any possibility to step? - rigid: should return always true or always false"

	^ false
]

{ #category : 'testing' }
SDPlayerToken >> isSteppable [
	"can I step right now?"

	^ false
]
