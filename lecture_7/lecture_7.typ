#import "../template.typ": *

= Lecture 7

== Pressurized Propellent Feed Systems

In pressurized propellent feed systems, a high pressure inert gas (such as helium) is fed into the tanks which pushes out the propellent. This means that the *propellent tanks need to have thick walls*, which means that the majority of the system mass is the propellent walls not the engine. Typically these systems are *used in space* and *yield lower thrusts, chamber pressures and performances*. A system level diagram of a pressure fed system is shown in *@7-system-pressurized*.

#figure(
  image("images/7-pressurized-system-overview.png", height: 30%),
  caption: [System level diagram of a pressure fed propellent system.],
  supplement: [Figure],
  kind: figure,
)<7-system-pressurized>

=== Pressurized Propellent Feed Systems: Blow Down

A *blow down* feed system is the most simple propellent feed system possible where the propellent tank is kept at a high pressure (30 - 40 Bar) which then decreases overtime as the propellent is used up (pressure is not topped up). These systems lead to a drop of pressure and therefore thrust over the lifetime of the engine. A system level image of this system as well as the pressure and thrust overtime are shown in *@7-blow-down*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/7-blow-down-diagram.png", width: 70%)], [#image("images/7-blow-down-thrust.png", width: 90%)],
  ),
  caption: [System level diagram of a blow down feed system [Left], thrust and pressure over time for a blow down system [Right].],
  supplement: [Figure],
  kind: figure,
)<7-blow-down>

=== Pressurized Propellent Feed Systems: Pressure Regulated

A *pressure regulated* system ensures that the pressure in the tanks remains the same overtime by topping up the tanks with an inert high pressure gas. These systems ensure optimal thrust over the lifetime of the engine at the cost of *complexity* as the *regulator valve* is complex and is needed to allow for the small opening of the valve to ensure constant pressure. A system level image of this system as well as the pressure and thrust overtime are shown in *@7-pressure-regulated*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/7-pressure-regulated-diagram.png", width: 70%)],
    [#image("images/7-pressure-regulated-thrust.png", width: 90%)],
  ),
  caption: [System level diagram of a pressure regulated feed system [Left], thrust and pressure over time for a pressure regulated system [Right].],
  supplement: [Figure],
  kind: figure,
)<7-pressure-regulated>

=== Pressurized Propellent Feed Systems: Bang Bang

*Bang bang* systems are a variant of the *pressure regulated* system where  instead of a regulator valve, a solenoid valve (bang bang valve) is used which can either be opened or closed. When the pressure in the propellent tank is below a certain value, the valve opens adding pressure until it reaches the cuttoff pressure when the valve closes. This allows for a *simpler system* at the cost of a *jagged thrust profile*. A system level image of this system as well as the pressure and thrust overtime are shown in *@7-bang-bang*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/7-bang-bang-diagram.png", width: 70%)], [#image("images/7-bang-bang-thrust.png", width: 90%)],
  ),
  caption: [System level diagram of a bang bang feed system [Left], thrust and pressure over time for a bang bang system [Right].],
  supplement: [Figure],
  kind: figure,
)<7-bang-bang>

== Case Study: NASA Cassini Mission

The Cassini mission was a joint NASA ESA mission to investigate Saturn and its moon. The spacecraft was launched in 1997 by a Titan IV rocket and arrived at Saturn in 2004. The mission consisting of fly bys as well as the landing of a probe on Titan concluded in 2017. An image of the spacecraft is shown in *@7-cassini-labelled*.

#figure(
  grid(
    columns: 2,
    column-gutter: -1cm,
    [#image("images/7-cassini.png", width: 70%)], [#image("images/7-cassini-fuel.png", width: 70%)],
  ),
  caption: [Labelled diagram of the Cassini probe [Left], labelled diagram of the propellent tanks and thrusters for Cassini [Right]],
  supplement: [Figure],
  kind: figure,
)<7-cassini-labelled>

In terms of the propulsion system, the spacecraft used *MMH* for the fuel and *nitrogen textoroxide* for the oxidizer for the main engines whereas for the four attitude control thrusters, *hydrazine* was used. Both systems would have their pressure replenished by a high pressure helium tank. The propellent delivery schematic for the Cassini probe is shown in *@7-cassini-propellent*.

#figure(
  image("images/7-cassini-propellent-map.png"),
  caption: [Cassini propellent dellivery schematic.],
  supplement: [Figure],
  kind: figure,
)<7-cassini-propellent>

In th bottom right of *@7-cassini-propellent*, the attitude control thrusters as well as the hydrazine tank are shown. On the left side of *@7-cassini-propellent* shows the *pressure fed bipropellent* engine ($T approx 400 N$) with the MMH tank shown as light blue and the nitrogen textoroxide tank in red. The blue labelled section was a system of *pyro ladders* which controlled the pressure-regulated side of the system. The green was the redundant blow down system. Finally, every component had at least two levels of redundancy to the point that there were even two engines. A table detailing the different propulsion events for the mission is shown in *@7-cassini-propulsive-events*.

#figure(
  image("images/7-cassini-event-table.png", height: 40%),
  caption: [Cassini propulsive events.],
  supplement: [Figure],
  kind: figure,
)<7-cassini-propulsive-events>

Note that for important manuevers such as flybys the pressure regulated section of the system is used whereas for general manuevers the blow down section of the system is used.

== Cold Gas Thrusters

These are the most basic thruster systems often used in *attitude control systems*, *micro or nano* satellites. These systems consis of a *high pressure gaseous propellent* is fed into a nozzle (flow controlled via valve) without any heating or reactions. Typically these systems are pressurized from *30 to 100 MPA* with *nitrogen being commonly used* due to its *inertness* as well as *low molecular mass* and relatively *high density*. The performance of different propellents is shown in *@7-cold-gas-performance*.

#figure(
  table(
    columns: 5,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Propellant*][*Molecular Mass ($W$)*][*Density ($g"/"c m^3)$)*][*Ratio Specific Heats ($k$)*][*Theoretical ($I_(s p)$)*],
    [Hydrogen], [2.0], [0.028], [1.40], [284],
    [Helium], [4.0], [0.057], [1.67], [179],
    [Methane], [16.0], [0.23], [1.30], [114],
    [Nitrogen], [28.0], [0.39], [1.40], [76],
    [Air], [28.9], [0.41], [1.40], [74],
    [Argon], [39.9], [0.57], [1.67], [57],
    [Krypton], [83.8], [1.19], [1.63], [50],
  ),
  caption: [Theoretical performance of different cold gas propellent],
)<7-cold-gas-performance>

However, the performances detailed in *@7-cold-gas-performance* are only theoretical and in reality there are several losses in cold gas thrusters such as:

- Many molecules are very small meaning that the thrust produced by exhausting them is low.
- Over the nozzle, the temperature of the exhaust decreases which can go below the boiling temperature. This phase change sucks out energy, further decreasing performance.

In reality therefore, the thrust and performance of these engines is much lower, some real world cold gas thrusters are shown in

#figure(
  table(
    columns: 4,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Thruster*][*Max Thrust ($N$)*][*Chamber Pressure ($M P A$)*][*$I_(s p) (s)$*],
    [Bradford Engineering PMT], [0.002], [0.25], [60],
    [Moog 58-118], [3.6], [1.59], [65],
    [RDMT-5], [5], [], [70],
    [Vacco MIPS], [55], [], [65],
  ),
  caption: [Real performance of different cold gas propellent],
)<7-cold-gas-real-performance>

#pagebreak()
