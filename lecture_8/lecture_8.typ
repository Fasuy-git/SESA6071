#import "../template.typ": *

#lecture("Lecture 8", 1, 4)

== Intro to Solid Propulsion

In there most primitive form, solid rocket boosters consist of a fuel and oxidizer that are bound together using a binder and are located within the combustion chamber itself. When ignited via an ignitor the mixture burns in place and is accelerated through a nozzle to produce thrust. Note that once ignited, solid rocket boosters cannot be stopped. They are used in two main scenarios, shown below. Note that the basic constituent parts of a SRB are shown in *@8-srb-anatomy*.

- *Launch Vehicles*: The total required impulse is already known before launch and doesn't change so SRBs can be used.
- *When restarts are not needed*

#figure(
  image("images/8-srb-anatomy.png", width: 50%),
  caption: [Constituent parts of a SRB.],
  supplement: [Figure],
  kind: figure,
)<8-srb-anatomy>

== Grain Shape and Thrust

Depending on the shape of the grain within the solid rocket motor, the thrust produced by the engine can vary. Various grain shapes and their associated thrust curves are shown in *@8-grain-shape*.

#figure(
  image("images/8-grain-shape.png", width: 60%),
  caption: [Effect of grain shape on the thrust profile..],
  supplement: [Figure],
  kind: figure,
)<8-grain-shape>

The most common grain shape used is the *star* shape as this gives a quasi-constant thrust profile over the burn time. Note that for the *rod and tube* design, the tube can become easily dis-logged and cause issues. Typically SRBs will have a star grain pattern at the top with a tubular pattern below.

== Mass Flow and Burning Rates

The equation for the mass flow rate of the exhaust of the solid propellent is given by *@8-mass-flow-rate*

$
  accent(m, dot) = A_b accent(r, dot) rho_p
$<8-mass-flow-rate>

Where:

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  [- *$accent(m, dot)$*: Mass flow rate ($k g "/" s$)], [- *$A_b$*: Burn area ($m^2$)],
  [- *$accent(r, dot)$*: Burn rate ($m"/"s$)], [- *$rho_p$*: Propellent density ($k g "/" m^3$)],
)

The burn rate shown in *@8-mass-flow-rate* is given by the empirical formula detailed in *@8-burn-rate*.

$
  accent(r, dot) = a P_c^n
$<8-burn-rate>

Where:

- *$P_c$*: Chamber pressure ($P a$)
- *$a$*: Burn rate Coefficient,
- *$n$*: Burn rate exponent

The burn rate typically varies from 0.6 - 1.3 cm/s but can reach values of 5 cm/s in extreme cases. $n$ typically varies from 0.2 - 0.6 with n > 1 leading to combustion instabilities. The value of $n$ controls how quickly the reaction flattens at a fixed burn rate, as shown in *@8-linear-burn-rate*.

#figure(
  image("images/8-linear-plot-burn.png", width: 40%),
  caption: [How changing $n$ effects the burn rate.],
  supplement: [Figure],
  kind: figure,
)<8-linear-burn-rate>

Larger values of $n$ mean an eventual higher burn rate and vice versa. Note that the value of $n = 1$ acts as a upper limit. Plotting the burn rate on a log plot yields *@8-log-burn-rate*.

#figure(
  image("images/8-log-plot-burn.png", width: 60%),
  caption: [Mesa and Plateau burning.],
  supplement: [Figure],
  kind: figure,
)<8-log-burn-rate>

*Plateau* burning occurs when the binding material begins to breakdown and *Mesa* burning is another burning phenomena. Ambient temperature also has an effect on the performance as shown in *@8-thrust-temp*.


#figure(
  image("images/8-thrust-temp.png", width: 60%),
  caption: [Effect of ambient temperature on thrust curve.],
  supplement: [Figure],
  kind: figure,
)<8-thrust-temp>

Note that higher ambient temperatures yield shorter burn times and vice versa. Note that the area under the graphs must remain constant as the amount of propellent doesn't change. The degree with which the temperature or pressure change with a given change in ambient temperature are given by the equations shown in *@8-ambient-temp*.

$
  sigma_p & = ((partial ln(r))/(partial T_b))_(P_c) = 1/r ((partial r)/(partial T_b))_(P_c) \
     pi_K & = ((partial ln(P_c))/(partial T_b))_(K) = 1/P_c ((partial P_c)/(partial T_b))_(K)
            quad
            "Where" K = A_b / A_t
$<8-ambient-temp>

