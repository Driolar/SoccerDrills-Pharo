Class {
	#name : 'SDSoccerDrillNode',
	#superclass : 'OPModelObject',
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'accessing' }
SDSoccerDrillNode >> connected [

	owner ifNil: [ ^ #(  ) ].
	^ owner arcs select: [ :each |
		  each source = self or: [ each target = self ] ]
]

{ #category : 'testing' }
SDSoccerDrillNode >> isArc [

	^ false
]

{ #category : 'testing' }
SDSoccerDrillNode >> isNode [

	^ true
]
