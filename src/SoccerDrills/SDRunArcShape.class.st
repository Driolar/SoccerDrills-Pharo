"
I am the player run arc shape.
"
Class {
	#name : 'SDRunArcShape',
	#superclass : 'SDSoccerDrillArcShape',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'rendering' }
SDRunArcShape >> newMovingShape [

	^ RSBox new
]

{ #category : 'rendering' }
SDRunArcShape >> renderBasicShape [

	^ super renderBasicShape
		  dashed;
		  yourself
]
