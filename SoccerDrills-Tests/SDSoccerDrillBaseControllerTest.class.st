"
A DCPetriNetPlaceControllerTest is a test class for testing the behavior of DCPetriNetPlaceController
"
Class {
	#name : 'SDSoccerDrillBaseControllerTest',
	#superclass : 'OPAbstractElementControllerTest',
	#category : 'SoccerDrills-Tests',
	#package : 'SoccerDrills-Tests'
}

{ #category : 'hooks' }
SDSoccerDrillBaseControllerTest >> controllerClass [

	^ SDSoccerDrillBaseController
]

{ #category : 'accessing' }
SDSoccerDrillBaseControllerTest >> diagramControllerClass [

	^ SDSoccerDrillController
]

{ #category : 'construction' }
SDSoccerDrillBaseControllerTest >> diagramElementClass [

	^ SDSoccerDrillBaseShape
]

{ #category : 'accessing' }
SDSoccerDrillBaseControllerTest >> diagramModelClass [

	^ SDSoccerDrill
]

{ #category : 'hooks' }
SDSoccerDrillBaseControllerTest >> modelClass [

	^ SDSoccerDrillBase
]
