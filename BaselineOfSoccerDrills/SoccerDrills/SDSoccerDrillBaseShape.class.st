"
I am the basic shape for SDSoccerDrillBase.
"
Class {
	#name : 'SDSoccerDrillBaseShape',
	#superclass : 'OPBoundNode',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'rendering' }
SDSoccerDrillBaseShape >> renderBasicShape [
	"should render a simple shape without using any modelElement info and any advanced shape complexity"

	^ RSCircle new
		  size: 25;
		  borderColor: Color black;
		  yourself
]

{ #category : 'interactions' }
SDSoccerDrillBaseShape >> selectableInteraction [

	^ OPRSSelectable highlightBorderColorBlue
]

{ #category : 'interactions' }
SDSoccerDrillBaseShape >> shouldBePositionableByUser [

	^ true
]
