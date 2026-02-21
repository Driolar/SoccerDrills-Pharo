"
I customize OPPlugin for soccer drills.
"
Class {
	#name : 'SDSoccerDrillPlugin',
	#superclass : 'OPPlugin',
	#category : 'SoccerDrills-Adapters',
	#package : 'SoccerDrills',
	#tag : 'Adapters'
}

{ #category : 'accessing' }
SDSoccerDrillPlugin >> diagramControllerClass [

	^ SDSoccerDrillController
]

{ #category : 'accessing' }
SDSoccerDrillPlugin >> icon [

	^ SDSoccerDrillIcons ballForm
]

{ #category : 'accessing' }
SDSoccerDrillPlugin >> layouterClass [

	^ SDSoccerDrillLayouter
]

{ #category : 'accessing' }
SDSoccerDrillPlugin >> modelClass [

	^ SDSoccerDrill
]

{ #category : 'accessing' }
SDSoccerDrillPlugin >> modelSerializerClass [

	^ OPStonModelSerializer
]

{ #category : 'accessing' }
SDSoccerDrillPlugin >> name [
	^ 'Soccer Drill'
]
