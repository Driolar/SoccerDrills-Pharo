Class {
	#name : 'SDSoccerDrillNodeController',
	#superclass : 'OPElementController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'accessing' }
SDSoccerDrillNodeController >> dependentElements [

	^ self model connected
]

{ #category : 'destruction' }
SDSoccerDrillNodeController >> removeModel [

	self diagramController model remove: self model.
	super removeModel
]
