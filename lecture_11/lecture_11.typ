#import "../template.typ": *

#lecture("Lecture 11", 1, 6)

== Introduction to Electric Propulsion

Electric propulsion is the process of *accelerating propellent using electricity.* Typically electric proplusio systems feature *much higher exhuast velcoities* than comparible chemcical and solid thrusters (and therefore *much higher $I_(s p)$s*) at the cost of *lower thrust* ($F_(m a x) approx 5 N$). As shown in *@1-rocket-propulsion-family-tree*, there are three main groups of electric propulsion systems, electrothermal, electrostatic and electromagnetic.

=== Overview of Electrothermal Propulsion Systems

Electrothermal systems use electricity to heat up a gas which is then passed through a nozzle. The two main systems used to heat up the gas are resistors in *Resistojets* and electrical arcs in *Arcjets*.

==== Overview of Resistojets

Resistojets are a subset within electrothermal propulsion systems which use an electrical current running through knife-edge-like wires which heat upm liquid propellent passing over them. Internal baffles and insulation are used to keep the temperature within the chamber high. A schematic drawing of a resistojet thruster is shown in *@11-resistojet*.

#figure(
  image("images/11-resistojet.png", width: 40%),
  caption: [Schematic diagram of a Resistojet.],
  supplement: [Figure],
  kind: figure,
)<11-resistojet>

==== Overview of Arcjets

Arcjets are a subset within electrothermal propulsion systems which use a high potential difference between an anode and cathode to create a spark which then heats up a propellent. Although the spark is difficult to create and maintain, these systems can heat the propellent up to much higher temperatures than resistojet systems as the heating is no longer material limited. A schematic drawing of an arcjet thruster is shown in *@11-arcjet*.

#figure(
  image("images/11-arcjet.png", width: 60%),
  caption: [Schematic diagram of a Arcjet.],
  supplement: [Figure],
  kind: figure,
)<11-arcjet>

=== Overview of Electrostatic Propulsion Systems

Electrostatic propulsion systems make use of Coulombs force  to accelerate and focus ions to generate thrust. The exhaust is then neutralized by introducing electrons into it. The two main electrostatic thrusters used are *grided ion thrusters* and *electrospray/FEEP thrusters*.

==== Overview of Gridded Ion Thrusters

In this system, propellent is fed into a chamber where it is ionized (using either an electron gun, RF energy or a microwave system). The resulting plasma then sits at thousands of volts, eventually an ion will move towards the grid where it is rapidly accelerated due to the high negative charge creating thrust. An schematic image of a gridded ion thruster is shown in *@11-grided-ion-thruster*.

#figure(
  image("images/11-gridded-ion-thruster.png", width: 40%),
  caption: [Schematic diagram of a gridded ion thruster.],
  supplement: [Figure],
  kind: figure,
)<11-grided-ion-thruster>

=== Overview of Electrospray Thrusters

In this system, liquid is fed into a needle where it coalesces into a fluidic cone. A large voltage is then applied to the end of the needle and charged ions or ions are accelerated out into a spray. Although this system is simple, it is difficult to achieve and control. Organic liquids or metals can be used, an schematic diagram of an electrospray thruster is shown in

#figure(
  image("images/11-electrospary.png", width: 40%),
  caption: [Schematic diagram of a electrospray thruster.],
  supplement: [Figure],
  kind: figure,
)<11-electrospray>

=== Overview of Electromagnetic Propulsion Systems

Electromagnetic propulsion systems use electricity to ionize a flow of propellent and then accelerate the resulting positive ions using a strong electric and magnetic field (utilizing the right hand rule to generate a force). The two main types of electromagnetic thrusters are *pulsed plasma thrusters* and *magneto plasma dynamic (MPD) thrusters*.

==== Overview of Pulsed Plasma Thrusters

Pulsed plasma thrusters are a simple form of electromagnetic thruster which creates an arc between a highly positively and negatively charged plate which then ablates away a small amount of a Teflon block. This is then accelerated out of teh thruster using the Lorenz force. A schematic diagram of this thruster is shown in *@11-ppt*.

#figure(
  image("images/11-ppt.png", width: 50%),
  caption: [Schematic diagram of a pulsed plasma thruster.],
  supplement: [Figure],
  kind: figure,
)<11-ppt>

==== Overview of Magneto Plasma Thrusters (MPDs)

MPDs are similar in design to arcjets however they operate at much higher currents. Whereas arcjets may operate at 10s of amps, MPDs may operate at 100k amps. This allows for much more ionization of the propellent into a plasma which can be further accelerated using the Lorenz force. A schematic diagram of a MPD is shown in *@11-mpd*.

#figure(
  image("images/11-mpd.png", width: 50%),
  caption: [Schematic diagram of an MPD thruster.],
  supplement: [Figure],
  kind: figure,
)<11-mpd>

== Overview of Hall Effect Thrusters

These thrusters sit between electromagnetic and electrostatic thrusters, and are the dominant form of space propulsion. Whilst propellent does get ionized in a chamber and accelerated towards a negative grid, Hall effect thrusters also feature an annular chamber with a magnetic field also present. A schematic image of a Hall effect thruster is shown in *@11-hall-effect-thruster*.

#figure(
  image("images/11-hall-effect.png", width: 47%),
  caption: [Schematic diagram of a Hall effect thruster.],
  supplement: [Figure],
  kind: figure,
)<11-hall-effect-thruster>

== Electric Propulsion Performance

Recall *@2-electric-propulsion-efficiency*, *@2-specific-powerplant-mass* and *@2-emperical-acceleration-formula* as well as *@2-accel-against-isp* from lecture 2. These equations and figure have the following key takeaways:

- Electric propulsion exhaust velocity $c$ and thrust $F$ are *inversely proportional* to one another. A higher thrust means a lower exhaust velocity and performance and vice versa.

- Power input as well as power plant mass are *directly proportional* to thrust and acceleration. A higher thrust directly means a higher power input.

- In terms of values of the specific power plant mass:
  - $alpha = 200 k g "/" k W$ for a RTG
  - $alpha = 20 k g "/" k W$ for a solar panel
  - $alpha = 2 k g "/" k W$ for a nuclear reactor (note that the mass will have to be very big though.)

Note that the performance of the 7 different electrical propulsion systems mentioned above is shown in *@11-electrical-performance*.

#figure(
  table(
    columns: 5,
    fill: (col, row) => (
      if row in (0, 1, 4, 7, 10) {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Type*][*Thrust Range ($m N$)*][*$I_(s p) "Range" (s)$*][*Thruster Efficiency*][*$P_(i n) "Range" (W)$*],
    table.cell(colspan: 5, [*Electrothermal Propulsion Systems*]),
    [Resistojet], [200 - 300], [200 - 350], [65 - 90], [50 - 1000],
    [Arcjet], [200 - 1000], [400 - 1000], [30 - 50], [900 - 2200],
    table.cell(colspan: 5, [*Electrostatic Propulsion Systems*]),
    [Ion Thruster], [0.01 - 500], [1500 - 8000], [60 - 80], [100 - 4300],
    [Electrospray], [0.001 - 1], [300 - 6000], [15 - 70], [1 - 50],
    table.cell(colspan: 5, [*Electromagnetic Propulsion Systems*]),
    [PPT], [0.05 - 1], [600 - 2000], [$approx$ 10], [50 - 500],
    [MPD thruster], [0.001 - 2000], [2000 - 5000], [30 - 50], [2000 - 100,000],
    table.cell(colspan: 5, [*Misc Electrical Propulsion Systems*]),
    [Hall Thruster], [0.01 - 2000], [1500 - 3500], [20 - 60], [100 - 100,000],
  ),
  caption: [Comparative performance of different electrical propulsion systems.],
)<11-electrical-performance>

== Why Electric Propulsion ?

Electric propulsion systems are the dominant form of in-space propulsion, to understand why consider the rearranged form of the rocket equation shown in *@11-rearranged-rocket-eq*.

$
  M_0 / M_f = exp((Delta V)/(I_(s p) g_0)) = exp((Delta V)/(c)) quad --> quad M_p = M_f (exp((Delta V)/(c)) - 1)
$<11-rearranged-rocket-eq>

Now consider an asteroid rendezvous mission with the following requirements:

#grid(
  columns: (0.5fr, 0.5fr),
  row-gutter: 0.4cm,
  [- $M_"Payload" = 500 k g$], [- $Delta V = 5 k m "/" s$],
  [- $c_"Chemical" = 3 k m "/" s$], [- $c_"Electric" = 30 k m "/" s$],
)

For a chemical thruster, $M_p approx 2000 k g$ whereas for a electric thruster the $M_p approx 90 k g$. The downside here is the long burn time of electrical compared with chemical due to the very low thrust.

== Uses of Electric Propulsion

Electric thrusters have seen wide spread use in space applications for both primary and secondary propulsion systems. These are:

#grid(
  columns: (1fr, 1fr),
  [
    - Primary propulsion systems
      - Interplanetary exploration.
      - Drag compensation in LEO.
      - Orbit raising.
      - Formation flying.
  ],
  [
    - Secondary Propulsion system
      - N-S station keeping.
      - E-W station keeping.
  ],
)

#pagebreak()
