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
    columns: 2,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    [*Rocket Engine Type*], [*$I_(s p) (s)$*],
    [Chemical Using #ce("H2/O2")], [450],
    [Solid], [260],
    [Cold Gas], [70],
    [Gridded Ion Thruster], [3000],
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
  image("images/max-chem-energy.png", width: 70%),
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
  image("images/comparitive-electrical-performance-calc.png", width: 70%),
  caption: [Comparative electrical propulsion system voltage calculations.],
  supplement: [Figure],
  kind: figure,
)<2-electrostatic-performance-calcs>

As shown in *@2-electrostatic-performance-calcs* the voltage required to match the performance of a chemical system is very low and easily achievable, in reality electrostatic systems can achieve efficiencies in excess of 10,000s.

== Nuclear Performance

To estimate the performance of a thermal nuclear rocket engine, Uranium-235 fission is considered, where the energy released in one fission event is immediately transferred to a water molecule, this calculation is shown in *@2-nuclear-performance-calcs*.

#figure(
  image("images/max-nuclear-energy-calc.png", width: 70%),
  caption: [Maximum nuclear thermal propulsive system performance.],
  supplement: [Figure],
  kind: figure,
)<2-nuclear-performance-calcs>

Note that this $I_(s p)$ is a theoretical upper limit and in reality the true performance is much lower and is limited by material limits due to heat.
