Class {
	#name : 'SDSoccerDrillExamples',
	#superclass : 'Object',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'examples' }
SDSoccerDrillExamples class >> emptyModel [

	<script: 'self emptyModel inspect'>
	^ SDSoccerDrill new
		  name: 'New Soccer Drill';
		  yourself
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExample: aModel [

	| project |
	project := OPProject named: aModel name.
	project addModel: aModel.
	^ (OPWorkbench openProject: project) showAllElementsInAllDiagrams
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExampleEmptyModel [

	<example>
	self openExample: self emptyModel
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExampleRunBackAndForth [

	<example>
	self openExample: self runBackAndForthModel
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> runBackAndForthModel [

	<script: 'self runBackAndForthModel inspect'>
	| model firstBase secondBase startDirectionArc backDirectionArc |
	model := SDSoccerDrill new name: 'Soccer Drill Diagram'.
	firstBase := SDSoccerDrillBase new.
	secondBase := SDSoccerDrillBase new.
	startDirectionArc := SDRunArc
		                     from: firstBase
		                     to: secondBase
		                     named: 'startDirection'.
	backDirectionArc := SDRunArc
		                    from: secondBase
		                    to: firstBase
		                    named: 'backDirection'.
	startDirectionArc stepNumber: 1.
	backDirectionArc stepNumber: 2.
	model
		add: firstBase;
		add: secondBase;
		add: startDirectionArc;
		add: backDirectionArc.

	^ model
]
