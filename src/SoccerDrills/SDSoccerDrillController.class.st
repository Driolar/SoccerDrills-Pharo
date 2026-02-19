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
		  aController isKindOf: SDSoccerDrillNodeController ]
]

{ #category : 'accessing' }
SDSoccerDrillController >> controllerFactory [

	^ super controllerFactory
		  register: SDRunArcController forModel: SDRunArc;
		  register: SDDribblingArcController forModel: SDDribblingArc;
		  register: SDPassArcController forModel: SDPassArc;
		  register: SDShotArcController forModel: SDShotArc;
		  register: SDSoccerDrillBaseController forModel: SDSoccerDrillBase;
		  register: SDSoccerDrillGoalController forModel: SDSoccerDrillGoal
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
		icon: SDSoccerDrillIcons baseIcon;
		newCreationTool: 'Goal'
		factory: [ SDSoccerDrillGoalController new ]
		icon: SDSoccerDrillIcons goalIcon;
		newSeparator;
		newConnectionCreationTool: 'Run'
		factory: [ SDRunArcController new ]
		icon: SDSoccerDrillIcons runArcIcon;
		newConnectionCreationTool: 'Dribbling'
		factory: [ SDDribblingArcController new ]
		icon: SDSoccerDrillIcons dribblingArcIcon;
		newConnectionCreationTool: 'Pass'
		factory: [ SDPassArcController new ]
		icon: SDSoccerDrillIcons passArcIcon;
		newConnectionCreationTool: 'Shot'
		factory: [ SDShotArcController new ]
		icon: SDSoccerDrillIcons shotArcIcon
]
