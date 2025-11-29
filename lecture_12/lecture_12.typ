#import "../template.typ": *

= Lecture 12

== History of Electric Propulsion

Some key points in the development of electric propulsion, from the initial development of EP to their widespread use, is shown in the timeline below:

- *20 July 1964* — SERT-1: First flight of an ion thruster
- *15 August 1991* — USSR Meteor-3: First in-space test of a Hall Effect Thruster.
- *24 October 1998* — NASA Deep Space 1 launch (first ion thruster on a science mission)
- *9 May 2003* — Hayabusa launch to asteroid Itokawa
- *13 June 2010* — Hayabusa sample return capsule to Earth
- *20 October 2018* — BepiColombo launch using UK T6 ion thruster
- *24 May 2019* — First SpaceX Starlink satellites launch (v0.9 batch)
- *13 October 2023* — NASA Psyche mission launch to asteroid Psyche
- *Mid-2025 (launch window)* — Lunar Gateway PPE + HALO first modules launch window

Note that there is a large gap between the first use of ion thruster and the first actual use on a mission, this was probably due to the following factors:

- *Lack of power production* (poor solar panel efficiency) on spacecraft.
- *Toxic propellants* that were chosen for the initial thrusters (mercury, cesium) and lack of safe propellants at the time (Xenon, Krypton).
- *Low number of launches*, due to this safe propellent options were prioritized.

== Use of EP in Spacecraft

The number of satellites has grown incredibly over the l,ast few decades, going from a few hundred to over 9000 (inflated due to constellations). A graph of the cumulative number os satellites is shown in *@12-number-sats*. A large majority of these satellites utilize electric propulsion.

#figure(
  image("images/12-number-sats.png", width: 70%),
  caption: [Cumulative number of satellites from 1964 - 2020.],
  supplement: [Figure],
  kind: figure,
)<12-number-sats>

#pagebreak()

== EP Use-cases and Requirements
=== GEO Orbit Raising

For satellites which end up in a GEO, they are first inserted into a highly elliptical GTO (geostationary transfer orbit). From this an electric thruster is used to circularize the orbit and to then maintain the orbit (station keeping) over the lifetime of the mission. The key requirements of this mission type are shown below:

- *Thrust to power* defined by:
  - Time to do orbit transfer (current max is 6 months).
  - Power available per unit mass of satellite.
  - Due to these requirements, *30 - 70 mN/kW* is viewed as an acceptable value.

- The *power available* is defined by the available power on satellite, typically:
  - 1.5 tonne satellite: \~ 5 kW available.
  - 3 tonne satellite: \~ 10 kW available.
  - 6 tonne satellite: \~ 20 kW available.

- The *thruster lifetime* is based:
  - Transfer time: \~ 5000 hours
  - Station lifetime: 5000 - 10,000 hours.

On top of these requirements the $I_(s p) approx 1000 s$ for a good thruster.

=== LEO Orbit Raising

For many constellations as well as many other satellites, they are first dropped off in a LEO ($approx 400 k m$) and need to then be raised to a higher LEO or even a MEO ($approx 600 - 2000 k m$). Beyond this, some satellites also require some addition thrust for station keeping. The key requirements of this mission type are shown below:
Requirements;

- *Thrust to power* defined by:
  - Time to do orbit transfer (current max is 1 year).
  - Due to this requirements, *40 - 60 mN/kW* is viewed as an acceptable value.

- The *power available* is defined by the available power on satellite, typically:
  - 200 kg satellite: \~ 500 W available.
  - 1.5 tonne satellite: \~ 5 kW available.

- The *thruster lifetime* is based:
  - Transfer time: \~ 10,000 hours
  - Station lifetime: dependant on satellite and mission.

On top of these requirements the $I_(s p) approx 1000 s$ for a good thruster.

=== Applicable Thrusters for Orbit Raising

Given the requirements for LEO and GEO rasing, there only exists a few electric thruster which can work in this regime. Consider *@12-thrust-power-vs-impulse*, the highlighted envelope shows the  requirements for LEO and GEO raising. In reality only GITs, HETs and DCT(HEMPT) can be used, which type of thrusters are used for orbit raising are shown in *@12-orbit-raising*. As can be seen, HETs and GITs are most commonly used.

#figure(
  image("images/12-thrust-power-impulse.png", width: 70%),
  caption: [Plot of thrust per power against impulse for different electric thrusters, including low TRL and envelope for orbit raising.],
  supplement: [Figure],
  kind: figure,
)<12-thrust-power-vs-impulse>

#figure(
  image("images/12-orbit-raising.png", width: 100%),
  caption: [Plot showing which electric thrusters are used for orbit raising over time.],
  supplement: [Figure],
  kind: figure,
)<12-orbit-raising>

=== LEO and GEO Station Keeping

Many satellites require thrusters to maintain their orbit overtime. This equates to roughly *45 minutes of burning per day*. The requirements for these thrusters are different from orbit raising and are shown below:

- *Thrust to power* defined by:
  - Manoeuver time.
  - Required thrust to power is low as the thruster operation does not interfere with the satellite operation.
  - Thus specific impulse can be maximized.
  - Due to this requirements, *30 - 200 mN/kW* is viewed as an acceptable value.

- The *power available* is defined by the available power on satellite, typically:
  - Only limited power available as thruster must operate during payload operation.
  - Therefore power is supplied by either increasing solar array area or switching off of payload.
  - 1.5 tonne satellite: \~ 3 kW available.

- The *thruster lifetime* is based:
  - Dependent on thrust, mission, etc (\~ 5,000 - 10,000h)

On top of these requirements the $I_(s p)$ requirement is a bit lower than orbit raising.

=== Applicable Thrusters for Station Keeping

As the requirements for station keeping are more lax than the ones for orbit rasing, there are more available thrusters, the envelope defined by the requirements in the previous section is imposed in *@12-thrust-power-vs-impulse-station*.

#figure(
  image("images/12-thrust-power-impulse-station.png", width: 70%),
  caption: [Plot of thrust per power against impulse for different electric thrusters, including low TRL and envelope for station keeping.],
  supplement: [Figure],
  kind: figure,
)<12-thrust-power-vs-impulse-station>

As is shown in *@12-thrust-power-vs-impulse-station*, some electrothermal propulsion methods become viable as well as some options augmented with hydrazine.

=== Interplanetary Missions

Interplanetary missions require a very large $Delta V$ and so the main focus for the thruster is to have a very high $I_(s p)$. The full list of requirements for an interplanetary mission are shown below:

- *Thrust to power* defined by:
  - As the mission time is not a priority, the thrust to power is low meaning the mission time is very long (multiple years).
  - Due to this requirements, *> 20 mN/kW* is viewed as an acceptable value.

- The *power available* is defined by the available power on satellite, typically:
  - Defined by the final mission scenario.
  - Close to Earth, large power levels are available, further away lower power levels are available.
  - Only limited power available as thruster must operate during payload operation.
  - Therefore power is supplied by either increasing solar array area or switching off of payload.
  - 1.5 tonne satellite: \~ 3 kW available.

- The *thruster lifetime* is based:
  - Dependent on transfer time, typically \~ 40,000 - 80,000h.

On top of these requirements the $I_(s p)$ requirement is very high ($I_(s p) >> 3000s$).

=== Applicable Thrusters for Interplanetary Missions

Due to their high $I_(s p)$ and low thrust-to-power requirement, the envelope for available thrusters is pushed to the right. This means that only GITs and some high performance HETs can be used, this is shown in *@12-thrust-power-vs-impulse-interplanetary*.

#figure(
  image("images/12-thrust-power-impulse-interplanetary.png", width: 70%),
  caption: [Plot of thrust per power against impulse for different electric thrusters, including low TRL and envelope for interplanetary missions.],
  supplement: [Figure],
  kind: figure,
)<12-thrust-power-vs-impulse-interplanetary>

== Derivation of an Electric Thruster Rocket Equation

Consider a simple spacecraft consisting of the following subsections which all have the following masses (assuming spacecraft  structural mass to be negligible):

- *$M_(P a y)$*: Mass of the payload ($k g$)
- *$M_(P o w)$*: Mass of the power plant ($k g$)
- *$M_(P)$*: Mass of the propellent ($k g$)

With these three sections being connected to a thruster. The initial mass of the spacecraft is therefore defined by *@12-initial-mass*.

$
  M_0 = M_(P a y) + M_(P o w) + M_(P)
$<12-initial-mass>

An expression for the mass of the power plant can be defined by substituting the equations defined in *@12-eqs-to-sub* into *@12-initial-mass*.

$
  M_(P) = accent(m, dot) t_b quad quad
  eta_T = ( accent(m, dot) c^2) / (2 P_(i n) )
  quad quad P_(i n) = M_(P o w) / alpha
$<12-eqs-to-sub>

The equation for the power plant mass is therefore defined in *@12-power-plant-mass*, where $v_c$ is the characteristic velocity, not to be confused with $c^*$.

$
  M_(P o w) = (M_0 - M_(p a y))/(1 + ((2 eta_T t_b)/(alpha c^2))) = (M_0 - M_(p a y))/(1 + (v_c^2)/(c^2))
  quad quad
  v_c = sqrt((2 eta_T t_b)/(alpha))
$<12-power-plant-mass>

Utilizing *@12-power-plant-mass*, rearranging it and substituting in to the rocket equation yields *@12-electric-rocket-equation*.

$
  Delta V = c ln((1 + (v_c^2)/(c^2))/(M_(P o w)/M_0 + (v_c^2)/(c^2)))
$<12-electric-rocket-equation>

As *@12-electric-rocket-equation* is an unintuitive equation, it has been plotted out with $Delta V$ against increasing exhaust velocities in *@12-electric-rocket-equation-plot*.

#figure(
  image("images/12-electric-rocket-eq.png", width: 40%),
  caption: [Plot of normalized $Delta V$ against normalized exhaust velocities.],
  supplement: [Figure],
  kind: figure,
)<12-electric-rocket-equation-plot>

Note that as the exhaust velocity increases, the $Delta V$ does not continually increase, instead it starts to eventually decrease and this is because after a point the mass of the power plant needed to produce the power to accelerate the exhaust outweighs any $Delta V$ gain. Another way of thinking about this is that $M_(P o w) prop I_(s p)$ and $M_P prop 1 "/" I_(s p)$, meaning that there is an optimal mass of the spacecraft. *@12-electric-rocket-equation-plot* also has the following takeaways:

- For high $I_(s p)$s, if the system is operating at conditions to maximize performance, then $t_b$ will be high.
- For an optimum burn time $t_b_"Max" approx (Delta V)^2$
- An optimum $I_(s p)$ is roughly equal to the required change in velocity, $I_"sp"_"Optimum" approx Delta V$

#pagebreak()
