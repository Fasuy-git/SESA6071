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
- *[c] Capillary*: A needle head where a Taylor cone can form off.

== FEEP and Electrospray Onset Voltage

To find the minimum voltage that ions or droplets can be pulled out of teh taylor cone an equation is needed. This derivation starts from considering the surface tension and the elextrostatic force, both of these expressions are shown in *@19-electrostatic-surfacetension*.

$
  P_E = epsilon_0 / 2 E_n^2 quad quad P_(S T) = gamma (1/R_1 + 1/R_2)
$<19-electrostatic-surfacetension>

Where:

- *$P_E$*: Electrostatic Pressure (Pa).
- *$epsilon_0$*: Permittivity of free space = 8.85418782 $times 10^(-12) m^(-3) k g^(-1) s^4 A^2$.
- *$E_n$*: Electric field strength normal to the cone (N/C).
- *$P_(S T)$*: Surface pressure (Pa).
- *$gamma$*: Surface tension (N/m).
- *$R_1$*: 1st radii of curvature (m).
- *$R_2$*: 2nd radii of curvature (m).

These two equations can be equated to one another and the resulting equation can be simplified using the geometry of the Taylor cone ($R_2 >> R_1$ and $alpha =$ cone half angle), yielding *@19-normal-electricfield*.

$
  E_n = sqrt((2 gamma)/(epsilon_0 r tan(alpha)))
$<19-normal-electricfield>

Where:
- *$alpha$*: Cone half angle = $49 degree$
- *$r$*: Distance from cone tip ($m$)

Another equation can be derived for the electric field strength given the geometry of the cone in a parallel plate capacitor, this yields *@19-electricfieldstrength*.

$
  E_T = (2 phi.alt)/(r_e ln((4 Z_0)/r_e))
$<19-electricfieldstrength>

Where:

- *$E_T$*: Electric field strength (N/C).
- *$phi.alt$*: Electric potential (V)
- *$r_e$*: Radius of needle end (m)
- *$Z_0$*: Distance between cone end and accelerator plate (m)

Both *@19-electricfieldstrength* and *@19-normal-electricfield* can be substituted into one another yielding *@19-onset-voltage*.

$
  V_(o n) = [(2 gamma r_e cos(alpha))/epsilon_0]^(1/2) ln((4 Z_0)/r_e)
$<19-onset-voltage>

Some different onset voltages for different propellent materials are shown in *@19-onsetvoltages* ($r_e = 0.25m m, " " Z_0 = 0.5m m$).

#figure(
  table(
    columns: 4,
    fill: (col, row) => if row == 0 { gray } else { white },
    align: center + horizon,
    table.header[*Type*][*Propellant*][*$gamma$ [$m N "/"m$]*][*$V_(o n)$ [$V$]*],

    [FEEP], [Caesium], [71], [3363],
    [FEEP], [Indium], [556], [9411],
    [Electrospray], [Ionic liquid], [40], [2524],
  ),
  caption: [Onset voltages for different fuel types.],
)<19-onsetvoltages>

== FEEP and Electrospray Performance, Uses and Drawbacks

FEEP and electrospray thrusters provide very low amounts of thrust but can provide that thrust incredibly accurately and at very high efficiencies. The performance of FEEP and electrospray thrusters is detailed in *@19-feep-electrospray-performance*.

#figure(
  table(
    columns: 6,
    fill: (col, row) => if row == 0 { gray } else { white },
    align: center + horizon,
    table.header[*Type*][*Thrust range [mN]*][*$I_(s p)$ [s]*][*Applied Voltage [V]*][*Efficiency*][*$P_(i n)$ [W]*],

    [FEEP], [0.001 - 0.4], [6000 - 12,000], [$approx$ 10,000], [50 - 90], [< 30],
    [Electrospray], [0.001 - 0.2], [150 (droplets) \ 3000 (ions)], [$approx$ 3000], [10 - 90], [< 30],
  ),
  caption: [Onset voltages for different fuel types.],
)<19-feep-electrospray-performance>

Due to their small thrust they are not well suited for large missions, but have found their niche for precise attitude control and Cubesat propulsion. The main issue with these type of thrusters is their lifetime performance, specifically the constant bombardment that the accelerator sees.

#pagebreak()
