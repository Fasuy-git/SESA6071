#import "../template.typ": *

= Lecture 2

== Definitions and Fundamentals

To develop a empirical measure of performance we should first consider *@2-total-impulse*.

$
  I_(t) = integral^t_0 F #h(0.5em) d t
$<2-total-impulse>

Where:
- *$I_(t)$* : Total Impulse ($N s$)
- *$F$* : Thrust Force ($N$)
- *$t$* : Burn Duration ($s$)

Note that for *@2-total-impulse*, if $F$ is constant then the equation simplified to $I_(t) = F t$. A more useful measure of performance for rocket engines is shown in *@2-specific-impulse*.

$
  I_(s p) = (
  integral^t_0 F #h(0.5em) d t
  )
  /
  (
  g_0 integral^t_0 accent(m, dot) #h(0.5em) d t
  )
  =
  (
  I_t
  )
  /
  (
  g_0 integral^t_0 accent(m, dot) #h(0.5em) d t
  )
$<2-specific-impulse>

Where:
- *$I_(s p)$* : Specific Impulse ($s$)
- *$g_0$* : Standard Gravitational Accel ($"m/"s^2$) = $9.81 "m/"s^2$
- *$accent(m, dot)$* : Propellent mass flow rate ($k g"/"s$)

There is no concrete reason on why $g_0$ is present in this equation, however one common theory is that it allows $I_(s p)$to be in seconds instead of featuring a length unit which would eliminate any error in conversion from metric to imperial. If $F$ and $accent(m, dot)$ are both constant over the $t$ then *@2-specific-impulse* simplifies to *@2-constant-total-impulse*.

$
  I_(s p) = I_t / (g_0 m_p)
$<2-constant-total-impulse>

Where:
- *$m_p$*: Expelled propellent mass ($k g$) = $accent(m, dot) t$

Another useful parameter for defining engine performance is shown in *@2-exhaust-velocity*.

$
  c = F / accent(m, dot)
$<2-exhaust-velocity>

Where:
- *$c$*: Effective exhaust velocity ($m "/" s$)

The exhaust velocity is called as such as the *velocity profile of the exhaust is not uniform*, this is most seen in chemical rockets due to the *no slip condition* but is slightly seen in electrical rockets too. Rearranging all of the previous equations together yields a definition for $I_(s p)$ in terms of $c$.

$
  I_(s p) = c / g_0
$

Typical $I_(s p)$ values for the rocket engine types defined in the previous lecture are shown in *@2-typical-isp*.

#figure(
  table(
    columns: 5,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Rocket Engine Type*][*$I_(s p) (s)$*][*Thrust (N)*][*Efficiency*][*Propellent*],
    [Chemical bi-propellent], [200 - 450], [$lt.eq 10 M N$], [0.8], [Liquid or Solid Propellents],
    [Chemical mono-propellent], [150 - 250], [0.03 - 100], [0.9], [#ce("N2H4")],
    [Thermal Nuclear Fission], [500 - 860], [$lt.eq 10 M N$], [0.5], [#ce("H2")],
    [Resistojet - electrothermal], [150 - 350], [0.01 - 10], [0.4], [#ce("N2H4 , NH3 , H2")],
    [Ion Thruster - electrostatic], [1500-8000], [$10^(-5) - 0.5$], [0.65], [#ce("Xe")],
    [Hall Effect Thruster], [1500-2000], [$10^(-5) - 2$], [0.55], [#ce("Xe")],
  ),
  caption: [Typical values of $I_(s p)$],
)<2-typical-isp>

== Maximum Chemical Performance

A typical chemical reaction used in chemical rockets is combustion shown in *@2-combustion-equation*.

$
  #ce("H2 + 1/2 O2 -> H2O + Energy")
$<2-combustion-equation>

Combustion as shown in *@2-combustion-equation* nis an exothermic reaction as the energy of the reactants is more than the energy of the products, allowing for an excess of energy after the reaction. To estimate an effective upper limit to the energy released during combustion, the bond energies shown in *@2-bond-energies* can be used.

#figure(
  table(
    columns: 2,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    [*Chemical*], [*Bond Energy ($k J "/" m o l$)*],
    [#ce("H2")], [436],
    [#ce("O2")], [498],
    table.cell(rowspan: 2, [#ce("H2O")]), [428], [498.7],
  ),
  caption: [Respective bond energies of reactants and products in combustion.],
)<2-bond-energies>

Note that there are two bond energies in *@2-bond-energies* due to the #ce("OH") and the #ce("OH - H") bonds. The maximum energy can be calculated and are shown in *@2-max-chem-energy-calcs*.

#figure(
  image("images/max-chem-energy.png"),
  caption: [Calculations for maximum chemical rocket engine performance],
  supplement: [Figure],
  kind: figure,
)<2-max-chem-energy-calcs>

Note that in this calculation, the bond energy of oxygen is halved as per *@2-combustion-equation* and the equation for effective exhaust velocity comes from the kinetic energy equation and noting that $E_(k g) = E n e r g y "/" m a s s$.

== Comparative Electric Performance

To compare the efficiency of chemical propulsion to electric propulsion consider an electrostatic propulsion system shown in *@2-electrostatic-propulsion-system*.

#figure(
  image("images/electrostatic-propulsion-system.png", width: 50%),
  caption: [Basic principle of an electrostatic propulsion system.],
  supplement: [Figure],
  kind: figure,
)<2-electrostatic-propulsion-system>


A charged ion (assumed for these calculations to be a water ion) enters an electric field which causes it be accelerated to the more negative (lower potential plate). By setting the electric potential energy gained by the ion equal to the kinetic energy ($eta E_p = E_k$) then the $I_(s p)$ can be calculated, shown in *@2-electrostatic-performance-calcs*.

#figure(
  image("images/comparitive-electrical-performance-calc.png"),
  caption: [Comparative electrical propulsion system voltage calculations.],
  supplement: [Figure],
  kind: figure,
)<2-electrostatic-performance-calcs>

As shown in *@2-electrostatic-performance-calcs* the voltage required to match the performance of a chemical system is very low and easily achievable, in reality electrostatic systems can achieve efficiencies in excess of 10,000s.

== Nuclear Performance

To estimate the performance of a thermal nuclear rocket engine, Uranium-235 fission is considered, where the energy released in one fission event is immediately transferred to a water molecule, this calculation is shown in *@2-nuclear-performance-calcs*.

#figure(
  image("images/max-nuclear-energy-calc.png"),
  caption: [Maximum nuclear thermal propulsive system performance.],
  supplement: [Figure],
  kind: figure,
)<2-nuclear-performance-calcs>

Note that this $I_(s p)$ is a theoretical upper limit and in reality the true performance is much lower and is limited by material limits due to heat.

== Definitions and Fundamentals Cont.

For propulsion systems, efficiency can be defined in terms of the fraction of source power that is converted to jet power, this efficiency is shown in *@2-electric-propulsion-efficiency*.

$
  eta_T = ( accent(m, dot) c^2) / (2 P_(i n) ) \
  P_(i n) = (accent(m, dot) c^2)/(2 eta_T) = (F c)/(2 eta_T) \
  P_(i n) / m = F / m c / (2 eta_T) = a c/(2 eta_T)
$<2-electric-propulsion-efficiency>

Where:

#table(
  columns: (1fr, 1fr),
  stroke: 0em,
  align: left + horizon,
  [- *$eta_T$*: Power conversion efficiency], [- *$P_(i n)$*: Input or Source power ($W$)],
  [- *$a$*: Acceleration ($m "/" s^2$)], [- *$m$*: Spacecraft mass ($k g$)],
)

Note that for electrical systems $P_(i n)$, the power must come from a source e.g., solar panel array. *@2-electric-propulsion-efficiency* Also shows that *for a fixed specific power:* ($P_(i n) / m$) *a high effective exhaust speed* ($c$) *means a low acceleration.* It is also useful to define a specific power plant mass as shown in *@2-specific-powerplant-mass*.

$
  alpha = M_(p o w) / P_(i n)
$<2-specific-powerplant-mass>

Where:

- *$alpha$*: Specific power plant mass ($k g"/"W$)
- *$M_(p o w)$*: Power plant mass ($k g$)

By manipulating equations *@2-specific-powerplant-mass* and *@2-electric-propulsion-efficiency*, as well as assuming that $eta_T approx 1$ and $M_(p o w) approx 0.1m$ then the acceleration can be written as *@2-emperical-acceleration-formula*.

$
  a = 0.2 / (alpha c) #h(1em) cases(M_(p o w) approx 0.1m, eta_T approx 1)
$<2-emperical-acceleration-formula>

*@2-emperical-acceleration-formula* shows that $a$ and $c$ are inversely proportional from one another, meaning a high acceleration will typically mean a low effective exhaust velocity and vice versa. A showing how performance varies with acceleration is shown in *@2-accel-against-isp*.

#figure(
  image("images/accel-isp-plot.png", width: 80%),
  caption: [Variation of spacecraft acceleration against performance.],
  supplement: [Figure],
  kind: figure,
)<2-accel-against-isp>

Note that for electrical propulsion systems shown in *@2-accel-against-isp* a higher $I_(s p)$ means a lower acceleration as $I_(s p) prop c prop 1/a$. Different power sources have different values of $alpha$, for example:

- Nuclear Reactors $=> 2 k g "/" k W$
- Solar Panels $=> 20 k g "/" k W$
- RTGs $=> 200 k g "/" k W$

== Thrust Fundamentals

By apply Newton's second law to a rocket nozzle, considering the difference the atmospheric and exhaust pressure as well as using the equations derived in the previous sections, *@2-thrust-equations* can be derived.

$
  F = accent(m, dot) v_e + (P_e - P_a)A_e \
  c = v_e + ((P_e - P_a)A_e)/accent(m, dot) \
  I_(s p) = 1/g_0(v_e + ((P_e - P_a)A_e)/accent(m, dot))
$<2-thrust-equations>

Where:
#table(
  columns: (1fr, 1fr),
  stroke: 0em,
  align: left + horizon,
  [- *$v_e$*: Exhaust velocity ($m "/" s$)], [- *$P_e$*: Exhaust Pressure ($P a$)],
  [- *$A_e$*: Exhaust Area ($m^2$)], [- *$P_a$*: Atmospheric Pressure ($P a$)],
)

One key thing to note about *@2-thrust-equations* is that the thrust is made up of two parts, the first part being the *momentum thrust* accounting for the majority of the thrust (90-70%) and the second part is the *pressure thrust* (10-30%).

Crucially, as $P_a (h)$ then the $I_(s p) "and" c$ vary with the height, typically being lower at lower altitudes and increasing up an reaching their maximums in the thinner sections of the atmosphere.

Another impartial performance parameter for chemical rockets which does not depend on the altitude is shown in *@2-characteristic-velocity-equation*.

$
  c^"*" = (P_c A_t )/accent(m, dot)
$<2-characteristic-velocity-equation>

Where:
- *$c^"*"$*: Characteristic velocity ($m "/" s$)
- *$P_c$*: Chamber pressure ($P a$)
- *$A_t$*: Throat area ($m^2$)

Typical values of $c^"*"$ are 1500 m/s for a solid rocket and 2500 for #ce("H2/O2") liquid bi-propelled rocket.
