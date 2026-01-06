#import "../template.typ": *

#lecture("Lecture 20", 1, 10)

== Introduction to Electrothermal Propulsion

Electrothermal thrusters use electricity to heat up the propellent, the heated propellent that passes through a converging diverging nozzle producing thrust. Typical electrothermal propulsion methods have lower $I_(s p)$ than electrostatic or electromagnetic options but have a much higher thrust. The methods covered in this section are:

- *Resistojets*: Heat up the propellent using a resistor.
- *Arcjets*: Heat up the propellent using an electrical arc.

To increase performance, the *chamber temperature must be maximized*. However this poses two main issues if the temperature is too high, these are:

- Disassociation of propellent into it constituent particles.
- Ionization of propellent turning it into a plasma.

For an efficient electrothermal thruster, these losses must be reclaimed back which can be done through *recombination* which happens in the cooler nozzle. However recombination is a slow process meaning there can be losses if disassociation and ionization are not tackled. An expression for the frozen flow efficiency is shown in *@20-frozen-flow-eff*.

$
  eta_f = (h_c - h'_e)/h_c
$<20-frozen-flow-eff>

Where:

- *$eta_f$*: Frozen flow efficiency.
- *$h_c$*: Chamber enthalpy (J).
- *$h'_e$*: Exhaust specific enthalpy (J).

The $eta_f$ drops as disassociation and ionization occur, some ways to increase $eta_f$ and reduce frozen flow losses are:

- Choosing a monatomic propellent or one with strong intermolecular forces of attraction preventing disassociation.
- Using a longer nozzle to allow more recombination to occur (increases mass and moves further away from optimal expansion).
- Increasing chamber pressure to reduce levels of dissociation (increases mass and throat erosion).

== Resistojets

Use a heating element (wires, knife blades etc.,) to heat up a propellent. Resistojets are propellent agnostic meaning various propellent can be used ($#ce("O2"),#ce("H2O"),#ce("CO2"),#ce("NH3"),#ce("CH4"),#ce("N2")$). Due to their simplicity, they have the lowest EP mass but do require insulation to ensure all heat is kept in. To achieve a good  performance ($I_(s p) approx 300s$), similar temperatures to combustion must be achieved ($T_c approx 2500K$) meaning high resistance components must made from refractory metals (Tungsten, Tantalum, Rhenium).

== Arcjets

Arcjets aim to circumvent the issues with Resistojets by creating an electrical arc within the propellent which then heats it up, a schematic diagram of such an engine is shown in *@20-arcjet*.

#figure(
  image("images/20-arcjet.png", width: 70%),
  caption: [Schematic diagram of an arcjet thruster.],
  supplement: [Figure],
  kind: figure,
)<20-arcjet>

Altough the design looks simple, the physics of this engine are very complex as:

- The arc moves around the annulus and is unstable, because of this movement it is difficult to heat up all of the propellent.

- The arc can also erode the throat and so the lifetime of the engine is limited.

- If the temperature is high enough, there can be self induced magnetic fields which effect the performance.

Some of the main difficulties with Arcjets are that they are difficult to start, they are less efficient than the Resistojet and they require complex power processing due to the arc.

== Electrothermal equations

Many of the isentropic flow equations that were defined in topic two can be used here. Note that the exit pressure and ambient pressure in those equations can most likely be negligible. The total efficiency however is given by the total electrical efficiency.

== Electrothermal Performance

Both resistojets and arcjets have lower specific impulse compared to other EP types. However they have a high thrust to power ratio, with resistojets having very high thruster efficiencies. A comparison of electrothermal efficiencies is shown in *@20-electrothermal-performance*.

#figure(
  table(
    columns: 5,
    fill: (col, row) => if row == 0 { gray } else { white },
    align: center + horizon,
    table.header[*Type*][*Thrust range [mN]*][*$I_(s p)$ [s]*][*Efficiency*][*$P_(i n)$ [W]*],

    [Resistojet], [200 - 300], [50 - 350], [65 - 90], [100 - 1000 ],
    [Arcjet], [200 - 1000], [400 - 1000], [30 - 50], [900 - 2200 ],
    [Gridded ion Thruster], [0.01 - 500], [1500 - 8000], [60 - 80], [400 - 4300 ],
  ),
  caption: [Comparative performance of electrothermal thrusters.],
)<20-electrothermal-performance>

#pagebreak()
