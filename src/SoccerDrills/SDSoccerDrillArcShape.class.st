"
I am the abstract arc shape.

I care for movement animation either from source to target or along the control points.
"
Class {
	#name : 'SDSoccerDrillArcShape',
	#superclass : 'OPEdge',
	#instVars : [
		'movingShape'
	],
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'initialization' }
SDSoccerDrillArcShape >> createOwnedElementsWithoutController [

	self ownedElements ifNotEmpty: [ ^ self ].
	SDSoccerDrillArcNameShape in: self
]

{ #category : 'hooks' }
SDSoccerDrillArcShape >> headMarker [

	^ OPRSMarkerBuilder arrow
]

{ #category : 'initialization' }
SDSoccerDrillArcShape >> initialize [

	super initialize.
	movingShape := self newMovingShape
]

{ #category : 'rendering' }
SDSoccerDrillArcShape >> newAnimationAlongControlPointsWithDuration: aDuration [
	"Answer the animation where moving shape moves along the control points."

	| animation |
	animation := RSSequentialAnimation new.
	roassalShape controlPoints overlappingPairsDo: [ :from :to |
			animation add: (RSTransitionAnimation new
					 from: from;
					 to: to;
					 on: movingShape set: #position:;
					 duration: aDuration / (roassalShape controlPoints size - 1);
					 yourself) ].
	^ animation
]

{ #category : 'rendering' }
SDSoccerDrillArcShape >> newAnimationSourceToTargetWithDuration: aDuration [
	"Answer the animation where moving shape moves straight from source to target."

	^ RSTransitionAnimation new
		  from: self source roassalShape position;
		  to: self target roassalShape position;
		  on: movingShape set: #position:;
		  duration: aDuration;
		  yourself
]

{ #category : 'rendering' }
SDSoccerDrillArcShape >> newMovingShape [

	^ self subclassResponsibility
]

{ #category : 'rendering' }
SDSoccerDrillArcShape >> renderBasicShape [
	"should render a simple shape without using any modelElement info and any advanced shape complexity"

	^ OPRSPolyline new
		  markerEnd: self headMarker;
		  attachPoint: (RSBorderAttachPoint new offset: -10);
		  controlPointsController: OPRSDraggableCPController new;
		  addInteraction: OPRSDraggableControlPoints;
		  color: Color black;
		  from: self source roassalShape;
		  to: self target roassalShape;
		  yourself
]

{ #category : 'rendering' }
SDSoccerDrillArcShape >> roassalAnimationWithDuration: aDuration [
	"Answer the animation to be shown when I am stepped."

	| animation |
	self canvas add: movingShape.
	animation := self modelElement isMovementAlongControlPoints
		             ifTrue: [
		             self newAnimationAlongControlPointsWithDuration:
			             aDuration ]
		             ifFalse: [
		             self newAnimationSourceToTargetWithDuration: aDuration ].
	^ animation
		  when: RSAnimationEndEvent
		  do: [ :evt | movingShape remove ]
		  for: self canvas;
		  yourself
]
