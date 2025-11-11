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

The burn rate typically varies from 0.6 - 1.3 cm/s but can reach values of 5 cm/s in extreme cases. $n$ typically varies from 0.2 - 0.6 with n > 1 leading to combustion instabilities.

=== Burning Effects: Burn Rate Exponent

The value of $n$ controls how quickly the reaction flattens at a fixed burn rate, as shown in *@8-linear-burn-rate*.

#figure(
  image("images/8-linear-plot-burn.png", width: 40%),
  caption: [How changing $n$ effects the burn rate.],
  supplement: [Figure],
  kind: figure,
)<8-linear-burn-rate>

Larger values of $n$ mean an eventual higher burn rate and vice versa. Note that the value of $n = 1$ acts as a upper limit.

=== Burning Effects: Plateau and Mesa Burning

Plotting the burn rate on a log plot yields *@8-log-burn-rate*. *Plateau* burning occurs when the binding material begins to breakdown and *Mesa* burning is another burning phenomena.

#figure(
  image("images/8-log-plot-burn.png", width: 60%),
  caption: [Mesa and Plateau burning.],
  supplement: [Figure],
  kind: figure,
)<8-log-burn-rate>

=== Burning Effects: Ambient Temperature

Ambient temperature also has an effect on the performance as shown in *@8-thrust-temp*.

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

=== Burning Effects: Erosive Burning

Another parameter which effects the burning behavior is *erosive burning*, which occurs when high speed combustion
products flow over the burning surface. An example where this can occur is if the inner radius of a tubular grain is similar to the throat area, this mean the edges of the grain near the throat see a non-zero velocity flow and so are burnt away quicker. An image depicting this example as well as the effect it has on the thrust curve is shown in *@8-erosive-burning*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/8-errosive-burning-diragram.png", width: 90%)],
    [#image("images/8-errosive-burning-graph.png", width: 70%)],
  ),
  caption: [Diagram depicting erosive burning [Left], thrust graph overtime with and without erosive burning [Right].],
  supplement: [Figure],
  kind: figure,
)<8-erosive-burning>

=== Burning Effects: Acceleration

For an annular (or similar) grain where the burning occurs along the center of the rocket, spinning the rocket will *increase* the peak thrust whilst *reducing* the burn time, this is shown in  *@8-rotational-accel*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/8-rotational-accel.png", width: 95%)], [#image("images/8-rotational-accel-graph.png", width: 70%)],
  ),
  caption: [Diagram depicting burning under rotational velocity [Left], thrust graph overtime at various angular velocities. [Right].],
  supplement: [Figure],
  kind: figure,
)<8-rotational-accel>

In contrast, for a simple block of grain which is burning from the bottom, a lateral velocity will see a decrease in the peak thrust, this is shown in *@8-lateral-accel*.

#figure(
  image("images/8-lateral-accel.png", width: 35%),
  caption: [Diagram depicting the effect of lateral acceleration on a block grain.],
  supplement: [Figure],
  kind: figure,
)<8-lateral-accel>

=== Burning Effects: Metal Wires

The burning behavior can also be controlled through the embedding of metal wires, typically of silver or aluminum.

#pagebreak()

== Solid Propellants
=== Double Base

A double base propellent consists of two monopropellent molecules where one is a *high energy* unstable molecule and the other is a *low energy* more stable gelling molecule. The most common double base propellent is nitroglycerin and nitrocellulose, shown in *@8-double-base*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/8-nitroglycerin.png", width: 50%)], [#image("images/8-nitrocellulose.png", width: 50%)],
    [#ce("C3H5N3O9")], [#ce("(C6H9(NO2)O5)")],
  ),
  caption: [Molecular structure and chemical formula for  nitroglycerin [Left], molecular structure and chemical formula for  nitrocellulose [Right].],
  supplement: [Figure],
  kind: figure,
)<8-double-base>

When nitroglycerin and nitrocellulose are burnt together, the nitroglycerin acts as the high-energy component and  nitrocellulose acts as the stabilizer. When burnt together, these two monopropellents *burn smokeless*, have an $I_(s p) approx 210$ and have a *low density*.

=== Composite

Composite propellents have a better performance than double base propellents and consist of multiple constituent parts which are:

- *Fuel*: Typically a metal powder (normally Aluminum).
- *Oxidizer*: Typically an inorganic salt (ammonium perchlorate).
- *Binder*: Forms the fuel and oxidizer into a rubber/cement like grain.

Some common fuels and oxidizers are shown in *@8-composite-fuels-oxidizers*.

#figure(
  table(
    columns: (auto, 2.7cm, 2.4cm, 1.9cm, auto),
    fill: (col, row) => (
      if row in (0, 1, 5, 11) {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Name*][*Chemical \ Formula*][*Molecular Mass ($W$)*][*Density ($k g"/" m^3$)*][*Notes*],
    table.cell(colspan: 5, [*Fuels*]),
    [Aluminium (powder)],
    [#ce("Al")],
    [26.98],
    [2.70],
    [Widely used, good performance],
    [Boron (powder)],
    [#ce("B")],
    [10.81],
    [2.34],
    [High gravimetric and volumetric energy.],
    [Magnesium (powder)],
    [#ce("Mg")],
    [24.31],
    [1.74],
    [Easy ignition and high temp burning.],
    table.cell(colspan: 5, [*Oxidizers*]),
    [Ammonium Perchlorate], [#ce("NH4C IO4")], [59.5], [1950], [High performance, low cost],
    [Ammonium Nitrate], [#ce("NH4NO3")], [60], [1730], [Smokeless, moderate performance, low cost],
    [Sodium Nitrate], [#ce("NaNO3")], [56.4], [2170], [Moderate performance],
    [Potassium Perchlorate], [#ce("KC IO4")], [46.2], [2520], [Moderate performance, low regression rate],
    [Potassium nitrate], [#ce("KNO3")], [47.5], [21120], [Low cost, low performance],
    table.cell(colspan: 5, [*Binders*]),
    [Hydroxyl-Terminated Polybutadiene (HTPB)],
    [#ce("(C4H6)n(OH)2")],
    [54.09],
    [0.90-0.92],
    [Industry-standard inert binder but has a decent fuel contribution.],
    [Glycidyl Azide Polymer (GAP)],
    [#ce("(C3H5N3O)n")],
    [99.09],
    [1.10-1.30],
    [Energetic binder with higher performance than inert binders, more expensive, more sensitive.],
  ),
  caption: [Common solid composite fuels, oxidizers and binders],
)<8-composite-fuels-oxidizers>

== Solid Propellant Performance

Plotting the performance of different solid propellent fuels against their burn rates yields *@8-solid-performance*. Note that the maximum $I_(s p)$ of a solid rocket motor is only 250s which is less much less than a chemical rocket. Also the method of by which the solid grain is form (extrusion or casting) further effects the performance. Finally their are hybrid grains which are both double base and composite as is shown in the figure.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/8-solid-performance-graph.png", width: 100%)],
    [#image("images/8-composite-performance.png", width: 100%)],
  ),
  caption: [Performance against burn rate for different solid rocket propellents [Left], solid composite fuel performance [Right].],
  supplement: [Figure],
  kind: figure,
)<8-solid-performance>

On the right of *@8-solid-performance*, there is a graph which shows the performance of different percentage makeups of the oxidizer, fuel and binder for a composite fuel.

#pagebreak()

== Real Solid Propellant makeups

The realistic makeup of a double base, composite and hybrid double base composite solid fuel are shown in *@8-solid-makeup*.


#let ingredient_column_width = 0.64fr
#let mass_column_width = 0.36fr
#figure(
  table(
    columns: (
      ingredient_column_width,
      mass_column_width,
      ingredient_column_width,
      mass_column_width,
      ingredient_column_width,
      mass_column_width,
    ),
    fill: (col, row) => (
      if row in (0, 1) {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.cell(colspan: 2, [*Double Base*]),
    table.cell(colspan: 2, [*Composite*]),
    table.cell(colspan: 2, [*Composite Modified \
    Double Base*]),
    [*Ingredient*], [*Mass %*], [*Ingredient*], [*Mass %*], [*Ingredient*], [*Mass %*],

    [Nitrocellulose], [51.4], [Ammonium perchlorate], [70.0], [Ammonium perchlorate], [20.4],
    [Nitroglycerine], [43.0], [Aluminium powder], [16.0], [Aluminium powder], [21.1],
    [Diethyl phthalate], [3.2], [Polybutadiene acrylonitrile co-polymer], [11.78], [Nitrocellulose], [21.9],
    [Ethyl centralite], [1.0], [Epoxy curative], [2.22], [Nitroglycerine], [29.0],
    [Potassium sulfate], [1.2], [], [], [Triacetin], [5.1],
    [Carbon black], [< 1], [], [], [Stabilizers], [2.5],
    [Candelilla wax], [< 1], [], [], [], [],
  ),
  caption: [Makeup of different solid rocket fuels.],
)<8-solid-makeup>

Note that *Diethyl phthalate* is a plasticizer which is added to the double base to allow for easier moulding. *Carbon black* is added in small quantities as an opacifier to make the grain darker and thus reduce radiative heating. *Candelilla wax* is added to make it easier for the grain to escape the mould.
