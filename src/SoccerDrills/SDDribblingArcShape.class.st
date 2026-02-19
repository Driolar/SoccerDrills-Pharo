Class {
	#name : 'SDDribblingArcShape',
	#superclass : 'SDSoccerDrillArcShape',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'rendering' }
SDDribblingArcShape >> newMovingShape [

	^ RSComposite new
		  add: RSBox new;
		  add: (RSCircle new color: Color black);
		  yourself
]

{ #category : 'rendering' }
SDDribblingArcShape >> renderBasicShape [

	^ super renderBasicShape
		  format: '.';
		  yourself
]
