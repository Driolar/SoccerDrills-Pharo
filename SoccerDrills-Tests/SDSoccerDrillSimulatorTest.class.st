Class {
	#name : 'SDSoccerDrillSimulatorTest',
	#superclass : 'TestCase',
	#instVars : [
		'simulator'
	],
	#category : 'SoccerDrills-Tests',
	#package : 'SoccerDrills-Tests'
}

{ #category : 'tests' }
SDSoccerDrillSimulatorTest >> exampleModel [

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

{ #category : 'running' }
SDSoccerDrillSimulatorTest >> setUp [

	super setUp.

	SDSoccerDrillSimulator resetClassMapping.
	simulator := SDSoccerDrillSimulator model: self exampleModel
]

{ #category : 'tests' }
SDSoccerDrillSimulatorTest >> testStep [

	self assert: simulator itemsForAction size equals: 1.
	self
		assert: simulator steppableElements first model name
		equals: 'startDirection'.
	simulator step.
	self assert: simulator itemsForAction size equals: 1.
	self
		assert: simulator steppableElements first model name
		equals: 'backDirection'
]
