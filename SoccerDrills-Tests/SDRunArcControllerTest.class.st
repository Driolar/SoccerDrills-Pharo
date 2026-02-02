"
A DCPetriNetArcControllerTest is a test class for testing the behavior of DCPetriNetArcController
"
Class {
	#name : 'SDRunArcControllerTest',
	#superclass : 'OPAbstractDirectionalRelationshipControllerTest',
	#category : 'SoccerDrills-Tests',
	#package : 'SoccerDrills-Tests'
}

{ #category : 'accessing' }
SDRunArcControllerTest >> controllerClass [

	^ SDRunArcController
]

{ #category : 'accessing' }
SDRunArcControllerTest >> diagramControllerClass [

	^ SDSoccerDrillController
]

{ #category : 'construction' }
SDRunArcControllerTest >> diagramElementClass [

	^ SDRunArcShape
]

{ #category : 'accessing' }
SDRunArcControllerTest >> diagramModelClass [

	^ SDSoccerDrill
]

{ #category : 'accessing' }
SDRunArcControllerTest >> modelClass [

	^ SDRunArc
]

{ #category : 'hooks' }
SDRunArcControllerTest >> sourceControllerClass [

	^ SDSoccerDrillBaseController
]

{ #category : 'accessing' }
SDRunArcControllerTest >> sourceModelClass [

	^ SDSoccerDrillBase
]
