# SoccerDrills-Pharo
Simulation of Soccer Drills based on Pharo's [OpenPonk Modeling Platform](https://github.com/OpenPonk/openponk).
## Load the Soccer Drills Repository
You can load the Soccer Drills Repository into a fresh Pharo image (version 12 or newer) with:
```smalltalk
Metacello new
        baseline: 'SoccerDrills';
        repository: 'github://Driolar/SoccerDrills-Pharo:master/src';
        load
```
## Start the Soccer Drills Editor
Start the Soccer Drills Editor either
- sending a `SDSoccerDrillExamples` class side message or
- using the menu command `Soccer Drills Editor` in the world menu.

This is the editor's appearance:
<img width="1530" height="814" alt="image" src="https://github.com/user-attachments/assets/89b20b42-00d3-4ce9-8419-1419f8e0cc10" />
