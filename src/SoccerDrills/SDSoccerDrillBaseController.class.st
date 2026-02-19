"
I am the controller for SDSoccerDrillBase.
"
Class {
	#name : 'SDSoccerDrillBaseController',
	#superclass : 'SDSoccerDrillNodeController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'connecting' }
SDSoccerDrillBaseController >> canBeSourceFor: aController [

	^ aController isKindOf: SDSoccerDrillArcController
]

{ #category : 'connecting' }
SDSoccerDrillBaseController >> canBeTargetFor: aController [

	^ (aController isKindOf: SDSoccerDrillArcController) and: [
		  aController source model ~= self model ]
]

{ #category : 'construction' }
SDSoccerDrillBaseController >> diagramElementClass [

	^ SDSoccerDrillBaseShape
]

{ #category : 'accessing' }
SDSoccerDrillBaseController >> modelClass [

	^ SDSoccerDrillBase
]
