"
I am the controller for SDPassArc.
"
Class {
	#name : 'SDPassArcController',
	#superclass : 'SDSoccerDrillArcController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'construction' }
SDPassArcController >> diagramElementClass [

	^ SDPassArcShape
]

{ #category : 'accessing' }
SDPassArcController >> modelClass [

	^ SDPassArc
]
