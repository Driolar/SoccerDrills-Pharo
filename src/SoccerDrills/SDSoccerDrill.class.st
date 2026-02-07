"
I am a Soccer Drill model.

I connect SDSoccerDrillBases by SDSoccerDrillPaths.
"
Class {
	#name : 'SDSoccerDrill',
	#superclass : 'OPModelObject',
	#instVars : [
		'currentStepNumber'
	],
	#category : 'SoccerDrills-Models',
	#package : 'SoccerDrills',
	#tag : 'Models'
}

{ #category : 'accessing' }
SDSoccerDrill >> arcs [

	^ elements select: #isArc
]

{ #category : 'accessing' }
SDSoccerDrill >> bases [

	^ elements select: #isBase
]

{ #category : 'accessing' }
SDSoccerDrill >> currentStepNumber [

	^ currentStepNumber
]

{ #category : 'api' }
SDSoccerDrill >> incrementStepNumber [

	currentStepNumber := currentStepNumber + 1
]

{ #category : 'initialization' }
SDSoccerDrill >> initialize [

	super initialize.
	currentStepNumber := 1
]

{ #category : 'accessing' }
SDSoccerDrill >> maxStepNumber [

	^ self arcs
		  ifNotEmpty: [ self arcs max: [ :arc | arc stepNumber ] ]
		  ifEmpty: [ 0 ]
]
