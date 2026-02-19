Class {
	#name : 'SDShotArcShape',
	#superclass : 'SDSoccerDrillArcShape',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'hooks' }
SDShotArcShape >> headMarker [

	^ OPRSMarkerBuilder triangle
]

{ #category : 'rendering' }
SDShotArcShape >> newMovingShape [

	^ RSCircle new
		  color: Color black;
		  yourself
]

{ #category : 'rendering' }
SDShotArcShape >> renderBasicShape [

	^ super renderBasicShape
		  borderWidth: 3;
		  yourself
]
