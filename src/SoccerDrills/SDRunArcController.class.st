"
I am the controller for SDRunArc.
"
Class {
	#name : 'SDRunArcController',
	#superclass : 'OPDirectionalRelationshipController',
	#category : 'SoccerDrills-Controllers',
	#package : 'SoccerDrills',
	#tag : 'Controllers'
}

{ #category : 'forms' }
SDRunArcController >> buildEditorForm: aForm [

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
SDRunArcController >> createModelIn: aParentModel [

	^ (super createModelIn: aParentModel)
		  stepNumber: aParentModel maxStepNumber;
		  yourself
]

{ #category : 'construction' }
SDRunArcController >> diagramElementClass [

	^ SDRunArcShape
]

{ #category : 'accessing' }
SDRunArcController >> modelClass [

	^ SDRunArc
]

{ #category : 'destruction' }
SDRunArcController >> removeModel [

	self diagramController model remove: self model.
	super removeModel
]
