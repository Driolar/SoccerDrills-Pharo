"
I am the basic shape for SDSoccerDrillGoal.
"
Class {
	#name : 'SDSoccerDrillGoalShape',
	#superclass : 'OPBoundNode',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'rendering' }
SDSoccerDrillGoalShape >> renderBasicShape [
	"should render a simple shape without using any modelElement info and any advanced shape complexity"

	^ RSBox new
		  size: 25;
		  borderColor: Color black;
		  yourself
]

{ #category : 'interactions' }
SDSoccerDrillGoalShape >> selectableInteraction [

	^ OPRSSelectable highlightBorderColorBlue
]

{ #category : 'interactions' }
SDSoccerDrillGoalShape >> shouldBePositionableByUser [

	^ true
]
