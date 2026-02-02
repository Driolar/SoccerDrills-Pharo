"
I am a player run between two drill bases.
"
Class {
	#name : 'SDRunArc',
	#superclass : 'SDSoccerDrillArc',
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'running' }
SDRunArc >> run [

	self target pushPlayer: self source pullPlayer
]
