Class {
	#name : 'BaselineOfSoccerDrills',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfSoccerDrills',
	#package : 'BaselineOfSoccerDrills'
}

{ #category : 'baselines' }
BaselineOfSoccerDrills >> baseline: spec [

	<baseline>
	spec for: #common do: [
			self openPonkSimulationOn: spec.

			spec
				package: 'SoccerDrills'
				with: [ spec requires: #( 'OpenPonkSimulation' ) ];
				package: 'SoccerDrills-Tests'
				with: [ spec requires: #( 'SoccerDrills' ) ] ]
]

{ #category : 'baselines' }
BaselineOfSoccerDrills >> openPonkSimulationOn: spec [

	spec
		baseline: 'OpenPonkSimulation'
		with: [ spec repository: 'github://OpenPonk/simulation' ]
]
