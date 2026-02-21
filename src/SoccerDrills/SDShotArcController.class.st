"
I am the controller for SDShotArc.
"
Class {
	#name : 'SDShotArcController',
	#superclass : 'SDSoccerDrillArcController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'construction' }
SDShotArcController >> diagramElementClass [

	^ SDShotArcShape
]

{ #category : 'accessing' }
SDShotArcController >> modelClass [

	^ SDShotArc
]
