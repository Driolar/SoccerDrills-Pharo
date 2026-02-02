Class {
	#name : 'SDSoccerDrillLayouter',
	#superclass : 'OPLayouter',
	#category : 'SoccerDrills-Adapters',
	#package : 'SoccerDrills',
	#tag : 'Adapters'
}

{ #category : 'accessing' }
SDSoccerDrillLayouter >> allEdges [

	^ diagramController controllers
		  select: [ :ctrl | ctrl isKindOf: SDRunArcController ]
		  thenCollect: #roassalShape
]

{ #category : 'accessing' }
SDSoccerDrillLayouter >> allNodes [

	^ diagramController controllers
		  select: [ :ctrl | ctrl isKindOf: SDSoccerDrillBaseController ]
		  thenCollect: #roassalShape
]

{ #category : 'layouts' }
SDSoccerDrillLayouter >> defaultLayout [
	self gridLayout
]
