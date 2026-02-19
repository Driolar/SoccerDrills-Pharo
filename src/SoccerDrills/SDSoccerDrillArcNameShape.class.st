Class {
	#name : 'SDSoccerDrillArcNameShape',
	#superclass : 'OPEdgeLabel',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'adding' }
SDSoccerDrillArcNameShape >> defaultAnchorConstraintPosition [

	^ OPRSAnchorConstraintBalanceReference balance: 0.3
]

{ #category : 'adding' }
SDSoccerDrillArcNameShape >> defaultMinDistance [

	^ 5
]

{ #category : 'accessing' }
SDSoccerDrillArcNameShape >> defaultText [

	^ self modelElement stepNumber
]
