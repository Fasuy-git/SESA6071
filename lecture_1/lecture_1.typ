#import "../template.typ": *

= Lecture 1

== What is Rocket Propulsion

Propulsion itself is the *act of changing the motion of a body*, typically by using newtons third law and it can be classified in various types of ways. A more colloquial way of defining rocket propulsion is as *mass drivers*, throwing out mass one way to yield an acceleration in the other.

== Rocket Propulsion Family Tree

In the  the rocket propulsion types are grouped by the energy source.

#figure(
  image("images/propulsion-family-tree.png"),
  caption: [Flowchart of the rocket propulsion family tree],
  supplement: [Figure],
  kind: figure,
) <1-rocket-propulsion-family-tree>

=== Chemical Rockets

These utilize either a chemical reaction or decomposition to generate energy. Gas is heated to between *$700 degree C$ - $1300 degree C$* and to speeds between *$1.5 "km/s"$ - $4.5 "km/s"$*. These require a *fuel and oxidizer* and come in the following types:

- *Solid:* Fuel and oxidizer mixed within into a solid grain which cannot stop burning once ignited. feature *high thrust with low performance*.

- *Liquid:* Burn a liquid fuel and oxidizer allowing for repeated firings and variable thrust. Feature *high performance and thrust with high complexity*.

- *Hybrid:* Have a liquid oxidizer but a solid fuel allowing for better performance than solid with lower complexity.

=== Electric Rockets

These use electrical energy to generate thrust without utilizing combustion. Typically have very high exhaust velocities (*$~ 60,000 "m/s"$*) and therefore *very high performance* at the costs of *high complexities and very low thrust*. The four distinct groups are:

- *Electrothermal:* Uses electrical energy to heat a propellent (Resistojet). Are *simple to build* at the cost of *low thrust*.

- *Electrostatic:* Uses electrical energy to accelerate ionized fuel across an electric fields. Feature *good performance* at the cost of *being expensive and low thrust*.

- *Electromagnetic:* Accelerates an ionized fuel using a magnetic field. Fall issue to *low efficiency unless power input is high*.

- *Hall Effect Thruster:* Uses a mixture of both electrostatic and electromagnetic propulsion methods to accelerate propellent. These are the most *commonly used*.
