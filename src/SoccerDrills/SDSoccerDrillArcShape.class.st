Class {
	#name : 'SDSoccerDrillArcShape',
	#superclass : 'OPEdge',
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
SDSoccerDrillArcShape >> roassalAnimation [
	"Answer the animation to be shown when I am stepped."

	| movingShape |
	movingShape := self newMovingShape.
	self canvas add: movingShape.

	^ RSTransitionAnimation new
		  from: self source roassalShape position;
		  to: self target roassalShape position;
		  on: movingShape set: #position:;
		  when: RSAnimationEndEvent
		  do: [ :evt | movingShape remove ]
		  for: self canvas;
		  yourself
]
