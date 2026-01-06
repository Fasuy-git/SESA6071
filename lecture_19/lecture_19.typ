#import "../template.typ": *

= Lecture 19

== FEEP and Electrospray Thrusters

Field emission electric propulsion (FEEP) and electrospray thrusters differ from GITs as they do not need a discharge chamber and do not fundamentally create a plasma. A schematic image of this type of thruster is shown in *@19-schematic-feep*.

#grid(
  columns: 2,
  column-gutter: 0cm,
  [#figure(
    image("images/19-feep-schematic.png", width: 100%),
    caption: [Schematic diagram of a FEEP or electrospray type thruster.],
    supplement: [Figure],
    kind: figure,
  )<19-schematic-feep>],
  [#figure(
    image("images/19-taylor-cone.png", width: 100%),
    caption: [Diagram of the formation of a Taylor cone.],
    supplement: [Figure],
    kind: figure,
  )<19-taylor-cone>],
)

FEEP and electrospray thrusters use the following principles to generate thrust:

- A liquid metal (FEEP) or ionic liquid (electrospray) is held in a reservoir and fed into a needle where capillary action (surface tension) hold it in place.
- A strong electric field is induced via an accelerator/extractor forming a Taylor cone which the surface binding energy.
- For a FEEP thruster:
  - Individual ions are then directly pulled from the liquid metal Taylor cone forming a jet which eventually expands into a plume.
- For an electrospray thruster:
  - Either ions, charged droplets, or a mixture of both are pulled from the Taylor cone, forming a jet which eventually expands into a plume.
- Either way the positive plume must be neutralized, often achieved through a heated filament.

FEEP thrusters use liquid metals such as Indium, Caesium, Rubidium, Gallium as their propellents. Electrospray thrusters use ionic liquids such as 1-ethyl, 3-methylimidazolium tetrafluoraborate ($#ce("EM")$I$#ce("B4")$).

=== Electrospray Thrusters

Electrospray thrusters do have some benefit over FEEP thrusters. Conceptually a neutralizer may not be needed as the polarity of the extractor grid can be reversed pulling out either the positive or negative ion. Furthermore the ionic liquids are safer to use than the liquid metals. There are three forms of electrospray thrusters shown in *@19-electrospray-nozzles*. These three types are:

#figure(
  image("images/19-electrospray-nozzles.png", width: 80%),
  caption: [Different types of electrospray thrusters.],
  supplement: [Figure],
  kind: figure,
)<19-electrospray-nozzles>

- *[a] Externally Wetted*: Liquid flows over a cone .
- *[b] Porous*: A porous material is used for the nozzle and shaped into a cone, forming multiple Taylor cones.
- *[c] Capillary*: A needle head where a taylor cone can form off.
