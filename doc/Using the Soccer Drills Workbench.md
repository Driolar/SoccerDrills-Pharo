# Using the Soccer Drills Workbench

The Soccer Drills Workbench supports drawing and simulating technical soccer drills. Classical soccer drill diagrams represent a sequence of drill steps like running, dribbling, passing and shooting.

## Notation

A soccer drill can be modeled by the nodes and arcs available at the *Palette* form.

### Nodes

A node represents a *place* on the field. There are two kind of nodes:

- **Bases** are places where players and balls come and go. They are represented by circles.

- **Goals** are places where balls can be shot on. They are represented by squares.

### Arcs

An arc represents a directed *movement* between the pair of nodes it connects. The movement takes place at the time indicated by the attributed **step number**.  The step number of the selected arc can be edited at the *Properties* form.

There are following arc classes:

- A **pass arc** represents by a *solid* line passing the ball from one base to an other base. 

- A **run arc** represents by a *dashed* line a player running from one base to an other base.

- A **dribbling arc** represents by a *dotted* line a player dribbling a ball from one base to an other base.

- A **shot arc** represents by a *thick solid* line a ball shot from a base to a goal.

## Editing

The drill nodes can be singly rearranged as desired. There are also zooming, fitting and layout features available. The arc labels (step number) can also be singly repositioned.

To delete a selected component, press the *Delete* key and confirm.

In case you want to cancel adding an arc after you have selected the source but before you select the target, click on the *Select* button at the top of the *Palette* form. 

## Simulation

By choosing the *Simulation* option in the *Diagram* menu, a small window containing the two buttons *Play* and *Stop* is opened. The **stepping** delay is five seconds.

During the delay, the arcs having the current step number are colored green and let slide an **animation** icon from source to target node. For pass and shot arcs, the animation icon is a black circle symbolizing a ball. For run arcs, the icon is a grey square symbolizing a player. Finally, for dribbling arcs, the icon is a grey square containing a black circle.

## Persistence

The Soccer Drills can be saved in OpenPonk project files (extension: *opp*). Each OpenPonk project may contain severals models. In our case, each model is a different soccer drill. The menu *Project* offers the options to create new models (drills) and to open and save projects.

You may download some [soccer drill examples](https://github.com/Driolar/SoccerDrills-Pharo/tree/master/opp).
