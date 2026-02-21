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
		  (SDSoccerDrill -> #nodes).
		  (SDSoccerDrillNode -> #connected) }
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> displayMapping [

	^ {
		  (SDSoccerDrill -> 'Model').
		  (SDRunArc -> 'Run Arc').
		  (SDDribblingArc -> 'Dribbling Arc').
		  (SDPassArc -> 'Pass Arc').
		  (SDShotArc -> 'Shot Arc').
		  (SDSoccerDrillBase -> 'Base').
		  (SDSoccerDrillGoal -> 'Goal') }
]

{ #category : 'testing' }
SDSoccerDrillNavigatorAdapter >> hasMappingFor: anObject in: aModel [

	^ {
		  SDSoccerDrill.
		  SDSoccerDrillArc.
		  SDSoccerDrillNode } anySatisfy: [ :any | anObject isKindOf: any ]
]

{ #category : 'widget API' }
SDSoccerDrillNavigatorAdapter >> iconMapping [

	^ {
		  (SDSoccerDrill -> SDSoccerDrillIcons ballForm).
		  (SDRunArc -> SDSoccerDrillIcons runArcIcon).
		  (SDPassArc -> SDSoccerDrillIcons passArcIcon).
		  (SDDribblingArc -> SDSoccerDrillIcons dribblingArcIcon).
		  (SDShotArc -> SDSoccerDrillIcons shotArcIcon).
		  (SDSoccerDrillBase -> SDSoccerDrillIcons baseIcon).
		  (SDSoccerDrillGoal -> SDSoccerDrillIcons goalIcon) }
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
		  SDSoccerDrillNode.
		  SDSoccerDrillArc }
]
