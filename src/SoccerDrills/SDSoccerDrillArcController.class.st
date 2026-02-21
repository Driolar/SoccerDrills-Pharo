"
I am the controller for SDSoccerDrillArc.
"
Class {
	#name : 'SDSoccerDrillArcController',
	#superclass : 'OPDirectionalRelationshipController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'forms' }
SDSoccerDrillArcController >> buildEditorForm: aForm [

	| stepNumberPresenter |
	super buildEditorForm: aForm.
	stepNumberPresenter := aForm addNumberInput: 'Step number'.
	stepNumberPresenter
		minimum: 1;
		number: self model stepNumber;
		whenNumberChangedDo: [ :newValue |
				self model stepNumber: newValue.
				self modelChanged ]
]

{ #category : 'construction' }
SDSoccerDrillArcController >> createModelIn: aParentModel [

	^ (super createModelIn: aParentModel)
		  stepNumber: aParentModel maxStepNumber;
		  yourself
]

{ #category : 'destruction' }
SDSoccerDrillArcController >> removeModel [

	self diagramController model remove: self model.
	super removeModel
]
