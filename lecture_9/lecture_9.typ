#import "../template.typ": *

= Lecture 9

== Hybrid Rocket Combustion

Combustion within a solid rocket motor is much more complex than the combustion that takes place in solid or liquid rockets, as shown in *@9-hybrid-combustion*.

#figure(
  image("images/9-hybrid-combustion .png", width: 90%),
  caption: [Combustion for hybrid rockets.],
  supplement: [Figure],
  kind: figure,
)<9-hybrid-combustion>

Note that there is a *highly turbulent boundary layer* which forms on the surface of the fuel grain. Heat is transferred through convection and radiation through the boundary layer into the fuel grain which evaporates it and allows for combustion to take place, due to this complex mechanism, the regression rates for the fuel grain are *typically one third of that of solid rockets*. The fuel surface regression rate against the flow rate of oxidizer is shown in *@9-fuel-regression-oxidizer-flow*.

#figure(
  image("images/9-hybrid-fuel-oxidizier-log-plot.png", width: 90%),
  caption: [Plot of oxidizer flow rate against fuel regression rate.],
  supplement: [Figure],
  kind: figure,
)<9-fuel-regression-oxidizer-flow>

For *low oxidizer flow rates* the heat transfer is *radiation dominated* and the fuel regression rate is low. For *intermediate values of oxidizer flow rate*, the heat transfer is *convection dominated* with the turbulent boundary layer behavior seen in *@9-hybrid-combustion*. Finally at very *high oxidizer flow rates* phase change and chemical kinetics take over.

== Hybrid Rocket Equations

Using *@9-fuel-regression-oxidizer-flow*, equations for teh regression rate as well as the mass flow rate can be generated, teh equation for regression rate is shown in *@9-hybrid-regression-rate*.

$
  accent(r, dot) = a G_(o x)^n = a((accent(m, dot)_(o x))/(N pi R_p^2))^n
$<9-hybrid-regression-rate>

Where:

- *$G_(o x)$*: Oxidizer mass flux ($k g "/" m^2 s$)
- *$accent(m, dot)_(o x)$*: Oxidizer mass flow rate  ($k g "/" s$)
- *$N$*: Number of circular ports
- *$R_p$*: Radius of circular ports ($m$)

Note that in *@9-hybrid-regression-rate*, the empirical exponent $n$ typically ranges between 0.4 - 0.8. *@9-hybrid-regression-rate* can then be substituted into the equation for mass flow rate, *@8-mass-flow-rate*, to yield *@9-hybrid-mass-flow-rate*.

$
  accent(m, dot)_f = rho_f A_p (t) accent(r, dot) = 2 pi^(1-n) rho_f N^(1-n) a accent(m, dot)_(o x)^n R_p^(1-2n) L
$<9-hybrid-mass-flow-rate>

Where:

- *$rho_f$*: Fuel grain density ($k g "/" m^3$)
- *$A_p$*: Fuel grain surface area ($m^2$)
- *$L$*: Fuel grain length ($m$)

Note that the value of the empirical exponent $n$ in *@9-hybrid-mass-flow-rate* effects the behavior of $R_p$ in the following ways:

- for n < 0.5 fuel mass flow rate increases as Rp increases
- for n > 0.5 fuel mass flow rate decreases as Rp increases
- for n = 0.5 fuel mass flow rate remains constant as Rp increases

== Hybrid Rocket Propellents

Typical hybrid rocket oxidizers are:

- Nitrous oxide, hydrogen peroxide, LOX, Hydroxyl ammonium nitrate

Typical hybrid rocket fuel grains are (parrafin wax used to increase regression rate):

- HTPB, PBAN, rubber, paraffin wax

Note that hybrid rockets are an area of on going research with exotic propellent and various embeddings being looked into.
