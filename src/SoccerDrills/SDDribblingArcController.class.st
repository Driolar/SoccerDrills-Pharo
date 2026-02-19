"
I am the controller for SDDribblingArc.
"
Class {
	#name : 'SDDribblingArcController',
	#superclass : 'SDSoccerDrillArcController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'construction' }
SDDribblingArcController >> diagramElementClass [

	^ SDDribblingArcShape
]

{ #category : 'accessing' }
SDDribblingArcController >> modelClass [

	^ SDDribblingArc
]
