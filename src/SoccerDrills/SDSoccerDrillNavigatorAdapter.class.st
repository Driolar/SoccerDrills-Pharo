Class {
	#name : 'SDSoccerDrillNavigatorAdapter',
	#superclass : 'OPNavigatorAdapter',
	#category : 'SoccerDrills-Adapters',
	#package : 'SoccerDrills',
	#tag : 'Adapters'
}

{ #category : 'accessing' }
SDSoccerDrillNavigatorAdapter class >> priority [

	^ 10
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> childrenMapping [

	^ {
		  (SDSoccerDrill -> #bases).
		  (SDSoccerDrillBase -> #connected) }
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> displayMapping [

	^ {
		  (SDSoccerDrill -> 'Model').
		  (SDRunArc -> 'Run Arc').
		  (SDSoccerDrillBase -> 'Base') }
]

{ #category : 'testing' }
SDSoccerDrillNavigatorAdapter >> hasMappingFor: anObject in: aModel [

	^ {
		  SDSoccerDrill.
		  SDRunArc.
		  SDSoccerDrillBase } anySatisfy: [ :any | anObject isKindOf: any ]
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> iconMapping [

	^ {
		  (SDSoccerDrill -> SDSoccerDrillIcons ballForm).
		  (SDRunArc -> SDSoccerDrillIcons runArcIcon).
		  (SDSoccerDrillBase -> SDSoccerDrillIcons baseIcon) }
]

{ #category : 'private' }
SDSoccerDrillNavigatorAdapter >> sort: modelObjects [
	^ modelObjects
		sorted:
			[ :a :b | a name isNotNil and: [ b name isNil or: [ a name < b name ] ] ]
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> typesByDependency [

	^ {
		  SDSoccerDrill.
		  SDSoccerDrillBase.
		  SDRunArc }
]
