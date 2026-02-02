"
I am a soccer drill base where players and/or balls come and go.
"
Class {
	#name : 'SDSoccerDrillBase',
	#superclass : 'OPModelObject',
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'accessing' }
SDSoccerDrillBase >> connected [

	owner ifNil: [ ^ #(  ) ].
	^ owner arcs select: [ :each |
		  each source = self or: [ each target = self ] ]
]

{ #category : 'testing' }
SDSoccerDrillBase >> isArc [

	^ false
]

{ #category : 'testing' }
SDSoccerDrillBase >> isBase [

	^ true
]
