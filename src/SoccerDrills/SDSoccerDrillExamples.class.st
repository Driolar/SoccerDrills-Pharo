"
I provide Soccer Drill Examples.
"
Class {
	#name : 'SDSoccerDrillExamples',
	#superclass : 'Object',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'examples' }
SDSoccerDrillExamples class >> dribbleBackAndForthModel [

	<script: 'self dribbleBackAndForthModel inspect'>
	| model firstBase secondBase startDirectionArc backDirectionArc |
	model := SDSoccerDrill new name: 'Soccer Drill Diagram'.
	firstBase := SDSoccerDrillBase new.
	secondBase := SDSoccerDrillBase new.
	startDirectionArc := SDDribblingArc
		                     from: firstBase
		                     to: secondBase
		                     named: 'startDirection'.
	backDirectionArc := SDDribblingArc
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

{ #category : 'examples' }
SDSoccerDrillExamples class >> emptyModel [

	<script: 'self emptyModel inspect'>
	^ SDSoccerDrill new
		  name: 'New Soccer Drill';
		  yourself
]

{ #category : 'world menu' }
SDSoccerDrillExamples class >> menuCommandOn: aBuilder [

	<worldMenu>
	((aBuilder item: #DrillEditor) icon: SDSoccerDrillIcons ballForm)
		label: 'Soccer Drills';
		order: 225;
		parent: #MostUsedTools;
		action: [ self openExampleEmptyModel ];
		with: [
				(aBuilder item: #DrillExamples)
					parent: #DrillEditor;
					label: 'Dribbling Back and Forth Example';
					icon: SDSoccerDrillIcons ballForm;
					action: [ self openExampleDribbleBackAndForth ].
				(aBuilder item: #DrillExamples)
					parent: #DrillEditor;
					label: 'Wall Pass Example';
					icon: SDSoccerDrillIcons ballForm;
					action: [ self openExampleWallPass ] ]
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExample: aModel [

	| project |
	project := OPProject named: aModel name.
	project addModel: aModel.
	^ (OPWorkbench openProject: project) showAllElementsInAllDiagrams
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExampleDribbleBackAndForth [

	<example>
	self openExample: self dribbleBackAndForthModel
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExampleEmptyModel [

	<example>
	self openExample: self emptyModel
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> openExampleWallPass [

	<example>
	self openExample: self wallPassModel
]

{ #category : 'examples' }
SDSoccerDrillExamples class >> wallPassModel [

	<script: 'self wallPassModel inspect'>
	| model startBase wallBase shotBase startPass returnPass shot run goal |
	model := SDSoccerDrill new name: 'Wall Pass Drill Diagram'.
	startBase := SDSoccerDrillBase new.
	wallBase := SDSoccerDrillBase new.
	shotBase := SDSoccerDrillBase new.
	goal := SDSoccerDrillGoal new.
	startPass := SDPassArc from: startBase to: wallBase.
	returnPass := SDPassArc from: wallBase to: shotBase.
	run := SDRunArc from: startBase to: shotBase.
	shot := SDShotArc from: shotBase to: goal.

	startPass stepNumber: 1.
	run stepNumber: 1.
	returnPass stepNumber: 2.
	shot stepNumber: 3.

	model
		add: startBase;
		add: wallBase;
		add: shotBase;
		add: goal;
		add: startPass;
		add: run;
		add: returnPass;
		add: shot.

	^ model
]
