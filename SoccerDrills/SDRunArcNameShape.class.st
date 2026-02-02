Class {
	#name : 'SDRunArcNameShape',
	#superclass : 'OPEdgeLabel',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'adding' }
SDRunArcNameShape >> defaultAnchorConstraintPosition [

	^ OPRSAnchorConstraintBalanceReference balance: 0.3
]

{ #category : 'adding' }
SDRunArcNameShape >> defaultMinDistance [

	^ 5
]

{ #category : 'accessing' }
SDRunArcNameShape >> defaultText [

	^ self modelElement stepNumber
]
