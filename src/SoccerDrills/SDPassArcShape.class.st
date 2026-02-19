Class {
	#name : 'SDPassArcShape',
	#superclass : 'SDSoccerDrillArcShape',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'rendering' }
SDPassArcShape >> newMovingShape [

	^ RSCircle new
		  color: Color black;
		  yourself
]
