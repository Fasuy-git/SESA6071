#import "../template.typ": *

#lecture("Lecture 1", 1, 1)

== What is Rocket Propulsion ?

Propulsion itself is the *act of changing the motion of a body*, typically by using newtons third law and it can be classified in various types of ways. A more colloquial way of defining rocket propulsion is as *mass drivers*, throwing out mass one way to yield an acceleration in the other.

== Rocket Propulsion Family Tree

In *@1-rocket-propulsion-family-tree* the rocket propulsion types are grouped by the energy source.

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

=== Nuclear Rockets

Broadly speaking there are two types of nuclear rockets, these are:

- *Nuclear Detonation:* Use the shockwave produced when nuclear bombs are detonated to produce thrust (Orion Drive). *High performance and thrust* but are *very dangerous and have limited testing*.

- *Nuclear Thermal:* Uses the heat energy produced during nuclear fission to heat a propellent (typically hydrogen) which is then exhausted. These have *high performance and thrust* but are *dangerous and have limited testing*.

=== Solar and Laser Rockets

These systems use large diameter telescopes to focus in a laser or solar radiation to heat up a propellent. These systems feature *high theoretical performance and moderate thrust* but are *very complex and lack any real testing*.

=== Solar Sails

These systems use no propellent at all and instead produce thrust through the momentum gained when a photon is incident on the sail. These systems feature *good performance with no fuel* but fall victim to *low thrust and engineering complexity*.

== Rocket Propulsion Applications

Instead of grouping together rocket propulsion methods using the energy source, the rocket application can also be used, for example:

- *High Thrust/Maneuverability:* Typically have the cost of *low performance* and use *chemical or solid* propulsion methods.

- *High Performance:* Typically have the cost of *low thrust* and use *electrical* propulsion methods.

- *Balanced Thrust and Performance:* Typically the middle ground is *nuclear thermal*.

#pagebreak()
