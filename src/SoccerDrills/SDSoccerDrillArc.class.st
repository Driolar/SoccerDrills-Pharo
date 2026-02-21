"
I am an arc (a path) that connects to SDSoccerDrillNodes.
"
Class {
	#name : 'SDSoccerDrillArc',
	#superclass : 'OPDirectedAssociation',
	#instVars : [
		'stepNumber'
	],
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'initialization' }
SDSoccerDrillArc >> initialize [

	super initialize.
	stepNumber := 1
]

{ #category : 'testing' }
SDSoccerDrillArc >> isArc [

	^ true
]

{ #category : 'testing' }
SDSoccerDrillArc >> isNode [

	^ false
]

{ #category : 'accessing' }
SDSoccerDrillArc >> stepNumber [

	^ stepNumber
]

{ #category : 'accessing' }
SDSoccerDrillArc >> stepNumber: anObject [

	stepNumber := anObject
]
