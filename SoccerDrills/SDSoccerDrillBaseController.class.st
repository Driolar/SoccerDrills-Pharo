"
I am the controller for SDSoccerDrillBase.
"
Class {
	#name : 'SDSoccerDrillBaseController',
	#superclass : 'OPElementController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'connecting' }
SDSoccerDrillBaseController >> canBeSourceFor: aController [

	^ aController isKindOf: SDRunArcController
]

{ #category : 'nil' }
SDSoccerDrillBaseController >> canBeTargetFor: aController [

	^ (aController isKindOf: SDRunArcController) and: [
		  aController source model ~= self model ]
]

{ #category : 'accessing' }
SDSoccerDrillBaseController >> dependentElements [

	^ self model connected
]

{ #category : 'construction' }
SDSoccerDrillBaseController >> diagramElementClass [

	^ SDSoccerDrillBaseShape
]

{ #category : 'accessing' }
SDSoccerDrillBaseController >> modelClass [

	^ SDSoccerDrillBase
]

{ #category : 'destruction' }
SDSoccerDrillBaseController >> removeModel [

	self diagramController model remove: self model.
	super removeModel
]
