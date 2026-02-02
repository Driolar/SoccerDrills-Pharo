"
I am the controller for SDSoccerDrill.
"
Class {
	#name : 'SDSoccerDrillController',
	#superclass : 'OPDiagramController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'connecting' }
SDSoccerDrillController >> canBeTargetFor: aController [

	^ (super canBeTargetFor: aController) or: [
		  aController isKindOf: SDSoccerDrillBaseController ]
]

{ #category : 'accessing' }
SDSoccerDrillController >> controllerFactory [

	^ super controllerFactory
		  register: SDRunArcController forModel: SDRunArc;
		  register: SDSoccerDrillBaseController forModel: SDSoccerDrillBase
]

{ #category : 'accessing' }
SDSoccerDrillController >> elementsToShowInside [

	^ self model elements
]

{ #category : 'ui interaction' }
SDSoccerDrillController >> initializePalette: aPalette [

	aPalette
		newCreationTool: 'Base'
		factory: [ SDSoccerDrillBaseController new ]
		icon: OPPetriNetsIcons placeIcon;
		newSeparator;
		newConnectionCreationTool: 'Run'
		factory: [ SDRunArcController new ]
		icon: OPPetriNetsIcons arcIcon
]
