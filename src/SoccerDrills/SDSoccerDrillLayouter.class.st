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
		  select: [ :ctrl | ctrl isKindOf: SDSoccerDrillArcController ]
		  thenCollect: #roassalShape
]

{ #category : 'accessing' }
SDSoccerDrillLayouter >> allNodes [

	^ diagramController controllers
		  select: [ :ctrl | ctrl isKindOf: SDSoccerDrillNodeController ]
		  thenCollect: #roassalShape
]

{ #category : 'layouts' }
SDSoccerDrillLayouter >> defaultLayout [
	self gridLayout
]
