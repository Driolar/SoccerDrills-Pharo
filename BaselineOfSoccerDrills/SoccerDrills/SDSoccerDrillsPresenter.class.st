"
I am the Soccer Drills presenter based on OpenPonk.
"
Class {
	#name : 'SDSoccerDrillsPresenter',
	#superclass : 'OPSimulationGUI',
	#category : 'SoccerDrills-Simulation',
	#package : 'SoccerDrills',
	#tag : 'Simulation'
}

{ #category : 'toolbar' }
SDSoccerDrillsPresenter class >> toolbarMenu: aBuilder [

	<opEditorToolbarMenu: #SDSoccerDrillPlugin>
	self toolbarMenuItemFor: aBuilder
]

{ #category : 'private - hooks' }
SDSoccerDrillsPresenter >> simulatorClass [
	"diagram simulator class"

	^ SDSoccerDrillSimulator
]
