"
I am the controller for SDSoccerDrillGoal.
"
Class {
	#name : 'SDSoccerDrillGoalController',
	#superclass : 'SDSoccerDrillNodeController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'connecting' }
SDSoccerDrillGoalController >> canBeTargetFor: aController [

	^ aController isKindOf: SDShotArcController
]

{ #category : 'construction' }
SDSoccerDrillGoalController >> diagramElementClass [

	^ SDSoccerDrillGoalShape
]

{ #category : 'accessing' }
SDSoccerDrillGoalController >> modelClass [

	^ SDSoccerDrillGoal
]
