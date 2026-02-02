Class {
	#name : 'SDRunArcShape',
	#superclass : 'OPEdge',
	#category : 'SoccerDrills-DiagramElements',
	#package : 'SoccerDrills',
	#tag : 'DiagramElements'
}

{ #category : 'initialization' }
SDRunArcShape >> createOwnedElementsWithoutController [

	self ownedElements ifNotEmpty: [ ^ self ].
	SDRunArcNameShape in: self
]

{ #category : 'hooks' }
SDRunArcShape >> headMarker [

	^ OPRSMarkerBuilder arrow
]

{ #category : 'rendering' }
SDRunArcShape >> renderBasicShape [
	"should render a simple shape without using any modelElement info and any advanced shape complexity"

	^ OPRSPolyline new
		  dashed;
		  markerEnd: self headMarker;
		  attachPoint: (RSBorderAttachPoint new offset: -10);
		  controlPointsController: OPRSDraggableCPController new;
		  addInteraction: OPRSDraggableControlPoints;
		  color: Color black;
		  from: self source roassalShape;
		  to: self target roassalShape;
		  yourself
]
