#import "../template.typ": *

= Lecture 6

== Performance of Liquid Thrusters

There are many engine parameters which can be calculated using the equations in *@4-summary-of-equations*, however there are many parameters, mainly the combustion parameters ($W "and" k$) which cannot be calculated as easily. A *chemical reaction simulator* such as NASA's Glenn Chemical Equilibrium with Applications simulator can be used (#link("https://cearun.grc.nasa.gov/cgi-bin/CEARUN/setProblemType.cgi")[*_Press to go to link_*]). One useful parameter is the *oxidizer to fuel ratio*, shown in *@6-oxidizer-fuel-ratio*.

$
  r = accent(m, dot)_"ox" / accent(m, dot)_"fuel"
$<6-oxidizer-fuel-ratio>

Typically, rocket engines *burn fuel rich* and not purely stoichiometric. This is to decrease $W$ as lighter molecules make up more of the exhaust. An example of this is shown in *@6-oxidizer-fuel-ratios*.


#figure(
  image("images/6-oxidizer-fuel-ratios.png"),
  caption: [$accent(m, dot)_"ox" "/" accent(m, dot)_"fuel"$ against $I_(s p)$ for different rocket engines.],
  supplement: [Figure],
  kind: figure,
)<6-oxidizer-fuel-ratios>

Note that the stoichiometric ratio for $r$ for the Saturn V F1 engines was 3.4 and for the Space Shuttle Main Engines (SSME) it was 8. Note that the Space shuttle couldn't reach $r_"optimum"$ due to the low density of hydrogen and the lack of anymore space in the main fuel tanks for any more fuel.

#pagebreak()

#set page(flipped: true)
#set page("a3")

== Fuels

#figure(
  table(
    columns: (
      6cm,
      auto,
      6.5cm,
      auto,
      auto,
      auto,
      auto,
      auto,
      auto,
      auto,
      auto,
    ),
    fill: (col, row) => (
      if row in (0, 1, 10) {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Name*][*Chemical \ Formula*][* Chemical \ Structure*][*Type*][*Toxicity*][*Corrosivity*][*Flammability*][*Hypergolic?*][*Molecular Weight ($g"/mol"$)*][*Density ($k g "/" m^3$)*][*Boiling and Freezing Temp ($degree C$)*],
    table.cell(colspan: 11, [*Fuels*]),
    [Liquid Hydrogen (LH2)],
    [#ce("H2")],
    [#skeletize({
      fragment("H")
      single()
      fragment("H")
    })],
    [Bi],
    [None],
    [None],
    [High],
    [No],
    [2.016],
    [70.85],
    [Boil: -253 \ Freeze: -259],

    [RP-1 \ (Rocket Propellent Group 1)],
    [$"C"_"n""H"_"1.97n"$],
    [
      #skeletize({
        fragment("H")
        parenthesis(xoffset: (.2, -.2), br: $bold(n)$, {
          single()
          fragment("C")
          branch({
            single(angle: 2)
            fragment("H")
          })
          branch({
            single(angle: -2)
            fragment("H")
          })
          single()
        })
        fragment("H")
      })
    ],
    [Bi],
    [Moderate],
    [None],
    [High],
    [No],
    [170],
    [810],
    [Boil: 277 \ Freeze: -40],

    [Hydrazine],
    [#ce("N2H4")],
    [#skeletize({
      fragment("H")
      single(angle: -1)
      fragment("N")
      branch({
        single(angle: -3)
        fragment("H")
      })
      single()
      fragment("N")
      branch({
        single(angle: -1)
        fragment("H")
      })
      single(angle: 1)
      fragment("H")
    })],
    [Mono],
    [High],
    [Moderate],
    [Spontaneous],
    [N/A],
    [32.05],
    [1021],
    [Boil: 113.5 \ Freeze: 2],

    [Monomethylhydrazine (MMH)],
    [#ce("CH3NHNH2")],
    [#skeletize({
      fragment("H")
      single(angle: -2)
      fragment("N")
      branch({
        single(angle: -1)
        fragment($"CH"_3$)
      })
      single(angle: -3)
      fragment($"H"_2"N"$)
    })],
    [Bi],
    [High],
    [High],
    [High],
    [Yes],
    [46.07],
    [880],
    [Boil: 87.5 \ Freeze: -52.4],

    [Unsymmetrical Dimethylhydrazine (UDMH)],
    [#ce("(CH3)2NNH2")],
    [#skeletize({
      fragment("H")
      single(angle: -1)
      fragment("N")
      branch({
        single(angle: -3)
        fragment("H")
      })
      single()
      fragment("N")
      branch({
        single(angle: 1)
        fragment($"CH"_3$)
      })
      single(angle: -1)
      fragment($"CH"_3$)
    })],
    [Bi],
    [High],
    [High],
    [High],
    [Yes],
    [60.1],
    [793],
    [Boil: 63 \ Freeze: -58],

    [Methane],
    [#ce("C2H4")],
    [#skeletize({
      fragment("H")
      single(angle: -2)
      fragment("C")
      branch({
        single(angle: -4)
        fragment("H")
      })
      branch({
        single(angle: 0)
        fragment("H")
      })
      single(angle: -2)
      fragment("H")
    })],
    [Bi],
    [None],
    [None],
    [High],
    [No],
    [16.04],
    [422.6],
    [Boil: -162 \ Freeze: -183],

    [Ethanol],
    [#ce("C2H5OH")],
    [#skeletize({
      fragment("H")
      single()
      fragment("C")
      branch({
        single(angle: -2)
        fragment("H")
      })
      branch({
        single(angle: 2)
        fragment("H")
      })
      single()
      fragment("C")
      branch({
        single(angle: -2)
        fragment("H")
      })
      branch({
        single(angle: 2)
        fragment("H")
      })
      single()
      fragment("O")
      single(angle: 1)
      fragment("H")
    })],
    [Bi],
    [High],
    [Moderate],
    [High],
    [No],
    [46.07],
    [789],
    [Boil: 78.37 \ Freeze: -114],

    [Pentaborane],
    [#ce("B5H9")],
    [#skeletize({
      fragment("B")
      branch({
        single(absolute: 120deg)
        fragment("H")
      })
      branch({
        single(absolute: 210deg)
        fragment("H")
      })
      branch({
        single(absolute: 300deg)
        fragment("H")
      })
      single(absolute: 30deg)
      fragment("B")
      branch({
        single(absolute: 90deg)
        fragment("H")
      })
      single(absolute: -30deg)
      fragment("B")
      branch({
        single(absolute: -90deg)
        fragment("H")
      })
      single(absolute: 30deg)
      fragment("B")
      branch({
        single(absolute: 90deg)
        fragment("H")
      })
      single(absolute: -30deg)

      fragment("B")
      branch({
        single(absolute: -120deg)
        fragment("H")
      })
      branch({
        single(absolute: -30deg)
        fragment("H")
      })
      branch({
        single(absolute: -300deg)
        fragment("H")
      })
    })],
    [Bi],
    [Extremely],
    [Extremely],
    [Pyrophoric],
    [Yes],
    [63.13],
    [618],
    [Boil: 58.4 \ Freeze: -46.8],

    table.cell(colspan: 11, [*Oxidizers*]),
    [Liquid Oxygen (LOX)],
    [#ce("O2")],
    [#skeletize({
      fragment("O")
      double()
      fragment("O")
    })],
    [Bi],
    [None],
    [None],
    [N/A],
    [No],
    [32],
    [1141],
    [Boil: -182 \ Freeze: -218],

    [Dinitrogen Tetroxide],
    [#ce("N2O4")],
    [#skeletize({
      fragment("O")
      double(angle: -1)
      fragment("N")
      branch({
        single(angle: -3)
        fragment("O")
      })
      single()
      fragment("N")
      branch({
        single(angle: 1)
        fragment("O")
      })
      double(angle: -1)
      fragment("O")
    })],
    [Bi],
    [Extremely],
    [High],
    [N/A],
    [Yes],
    [92.01],
    [1440],
    [Boil: 21.2 \ Freeze: -11.2],

    [Hydrogen Peroxide],
    [#ce("H2O2")],
    [#skeletize({
      fragment("H")
      single(angle: -1)
      fragment("O")
      single()
      fragment("O")
      single(angle: -1)
      fragment("H")
    })],
    [Bi],
    [High],
    [High],
    [N/A],
    [No],
    [34.014],
    [1450],
    [Boil: 150.2 \ Freeze: -0.43],

    [Nitric Acid],
    [#ce("HNO3")],
    [#skeletize({
      fragment("O")
      single(absolute: 30deg)
      fragment("N")
      branch({
        double(angle: 2)
        fragment("O")
      })
      single(absolute: -30deg)
      fragment("O")
      single(absolute: 30deg)
      fragment("H")
    })],
    [Bi],
    [High],
    [High],
    [N/A],
    [No],
    [63.012],
    [1510],
    [Boil: 83 \ Freeze: -42],

    [Chlorine Trifluoride],
    [C#ce("IF3")],
    [#skeletize({
      fragment("F")
      single(angle: -1)
      fragment("Cl")
      branch({
        single(angle: 1)
        fragment("F")
      })
      single(angle: -2)
      fragment("F")
    })],
    [Bi],
    [Extreme],
    [Extreme],
    [N/A],
    [Yes],
    [92.45],
    [1800],
    [Boil: 11.75 \ Freeze: -76.34],

    [Oxygen Diflouride],
    [#ce("OF2")],
    [#skeletize({
      fragment("F")
      single(angle: 1)
      fragment("O")
      single(angle: -1)
      fragment("F")
    })],
    [Bi],
    [Extreme],
    [Extreme],
    [N/A],
    [No],
    [54],
    [1880],
    [Boil: -144.75 \ Freeze: -223.8],

    [Flourine],
    [#ce("F2")],
    [#skeletize({
      fragment("F")
      single()
      fragment("F")
    })],
    [Bi],
    [Extreme],
    [Extreme],
    [N/A],
    [Yes],
    [38],
    [1513],
    [Boil: -188.1 \ Freeze: -219.6],
  ),
  caption: [Data on common liquid fuels and oxidizers],
)<6-liquid-data>

#pagebreak()

#set page(flipped: false)
#set page("a4")

Note that nitrogen textoroxide shown in *@6-liquid-data* is usually mixed with nitric oxide #ce("NO") to increase the temperature range over which it is liquid, this mixture is called *Mixed Oxides of Nitrogen* (MON). To compare different fuel and oxidizer ratios, *@6-fuel-combo-data* can be used.


#figure(
  table(
    columns: 6,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Oxidizer*][*Fuel*][*Mass Mixture Ratio*][*$rho " " (g"/"c m^3)$*][*$c^* " " (m"/"s)$*][*Sea Level $I_(s p) " " (s)$*],
    table.cell(rowspan: 5, [#ce("O2")]),
    [Methane], [3.20], [0.81 ], [1.84], [296],
    [Hydrazine], [0.74], [1.06], [1.87], [301],
    [Hydrogen], [3.40], [0.26], [ 2.43], [386],
    [RP-1], [2.24], [1.01], [1.77], [300],
    [UDMH], [1.39], [0.96], [1.84], [295],
    table.cell(rowspan: 2, [#ce("F2")]),
    [Hydrazine], [2.30], [1.31], [2.21], [365],
    [Hydrogen], [4.54], [0.33], [2.53], [389],
    table.cell(rowspan: 3, [#ce("N2O4")]),
    [Hydrazine ], [1.08], [1.20], [1.77], [283],
    [RP-1], [3.4], [1.23], [], [297],
    [MMH], [1.65], [1.16], [1.59], [278],
    [#ce("H2O2")], [RP-1], [7.0], [1.29], [], [297],
  ),
  caption: [Performance parameters for different fuel and oxidizer combinations.],
)<6-fuel-combo-data>

One new area of interest is *green hypergolic fuels* such as Dimethylthioformamide. These are safer and more environmentally friendly alternatives to traditional rocket fuels.


== Overview of Monopropellant Thruster Systems

These systems generate thrust by flowing a propellent over/through a catalyst bed, where it endothermically decomposes, generating a hot, high velocity exhaust gas. The performance of such systems is shown in *@5-different-liquid-propulsion-methods* with a top level systems drawing of a thruster shown in *@6-system-mono-thruster*.

#figure(
  grid(
    columns: (1fr, 1fr),
    align: horizon,
    [
      #cetz.canvas({
        import cetz.draw: *

        group({
          scale(.8)
          // Connecting pipes
          rect((2.8, 0.15), (5, -0.15), fill: red)
          rect((5.8, 0.15), (8, -0.15), fill: red)

          // Propellent Tank
          let rect_height = 2
          let rect_length = 3
          rect((0, rect_height / 2), (rect_length, -rect_height / 2), radius: 0.5, fill: red)
          content((1.5, 0), [#text(white)[*Propellent*]])

          // Valve
          polygon((5, 0), 3, angle: 0deg, radius: 0.5, fill: white)
          polygon((6, 0), 3, angle: 180deg, radius: 0.5, fill: white)
          line((5.5, 0), (5.5, 0.75))
          arc((6, 0.75), stop: 180deg, delta: 180deg, radius: 0.5, mode: "PIE", fill: white)
          content((5.5, -0.75), [*Valve*])

          // Catalyst Bed
          rect((8, 0.75), (9, -0.75), fill: gray)
          for y in nt.linspace(0, -1.2, 5) {
            circle((8.17, 0.6 + y), radius: 0.1, fill: white)
            circle((8.47, 0.6 + y), radius: 0.1, fill: white)
            circle((8.8, 0.6 + y), radius: 0.1, fill: white)
          }
          content((8.5, -1.4), align(center)[*Catalyst \ Bed*])

          merge-path(fill: red, {
            line((9, -0.75), (9, 0.75), (10, 0.75), (11.5, 1.5), (11.5, -1.5), (10, -0.75), (9, -0.75))
          })
          content((11, -1.8), align(center)[*Nozzle*])
        })
      })],
    [#move(
      dy: -0.5cm,
      (image("images/6-mono-thruster-diagram.png", width: 80%)),
    )],
  ),
  caption: [System engineering diagram of a monopropellant thruster system [Left], real schematic of a monopropellant thruster [Right]],
  supplement: [Figure],
  kind: figure,
)<6-system-mono-thruster>

=== Decomposition of Hydrazine

Hydrazine is the most common monopropellent fuel used in rockets. It decomposes over a catalyst bed following the reaction detailed in *@6-decomp-hydrazine*.

#figure(
  ce("N2H4 -> 4/3 NH3 + 1/3N2 + Energy"),
  caption: [Decomposition reaction of hydrazine.],
  supplement: [Figure],
  kind: figure,
)<6-decomp-hydrazine>

This exothermic decomposition reaction has a equilibrium temperature of 1650K and releases a large amount of energy ($approx 111.7$kJ/mol of hydrazine). One issue is that at this temperature, the ammonia produced is unstable and itself decays via the reaction shown in *@6-breakdown-ammonia*.

#figure(
  ce("4/3 NH3 -> 2/3N2 + 4H2 - Energy"),
  caption: [Thermal breakdown of ammonia.],
  supplement: [Figure],
  kind: figure,
)<6-breakdown-ammonia>

This reaction is *slow and endothermic*, reducing the energy released in the decomposition reaction and subsequently reducing thrust. As this reaction is slow, the *dwell time* (the amount of time the fuel remains in the combustor), plays a large roll in the energy released. The full decomposition reaction for hydrazine can therefore be written as *@6-full-decomp-hydrazine*.

#figure(
  ce("3N2H4 -> 4(1-x)NH3 + (1-2x)N2 + 6xH2 + Energy"),
  caption: [Full decomposition reaction for hydrazine.],
  supplement: [Figure],
  kind: figure,
)<6-full-decomp-hydrazine>

Where *$x$* is the degree of ammonia dissociation. This parameter depends on the:

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  [- Catalyst type], [- Size of chamber],
  [- Geometry], [- Chamber pressure],
  [- Dwell time],
)

Note that the real schematic shown in the right of *@6-system-mono-thruster* has a very small combustor section, to ensure a low dwell time and thus increase thrust by reducing energy losses through the endothermic reaction of ammonia breakdown. Some key performance parameters for a hydrazine thruster are plotted in *@6-hydrazine-performance*.

#figure(
  image("images/6-mono-performance.png", height: 37%),
  caption: [Performance parameters throughout a hydrazine decomposition reaction.],
  supplement: [Figure],
  kind: figure,
)<6-hydrazine-performance>

Note that the main parameter effecting the performance of the hydrazine thruster is the percentage of ammonia decomposition, meaning that dwell time is therefore one of the main contributing factors for engine performance.

=== Dangers of Hydrazine

Hydrazine is highly toxic, corrosive and flammable, meaning that working with this propellent is dangerous and costly. Some of the warning symbols related to hydrazine are shown in *@6-warning-hydrazine*.

#figure(
  grid(
    columns: 5,
    [#ghs(2)], [#ghs(5)], [#ghs(6)], [#ghs(8)], [#ghs(9)],
  ),
  caption: [Hazard symbols associated with hydrazine (1.flammable 2.corrosive 3.acutely toxic 4.serious health hazard 5.hazardous to the environment)],
  supplement: [Figure],
  kind: figure,
)<6-warning-hydrazine>

This provides motivation for the development of *green monopropellants* to decrease costs, allow for in-house refueling and ease of use.

=== Green Monopropellants: HAN

HAN or hydroxylammonium nitrate is an ionic liquid based compound which is solid at room temperature and often used in solid rocket motors. If mixed with water alcohol it becomes a monopropellant, the chemical formula as well as chemical structure are shown in *@6-han*.

#figure(
  grid(
    columns: 2,
    [#move(
      dx: -0.5cm,
      dy: 1cm,
      [#ce("[NH3OH]+ [NO3]-")],
    )],
    [#image("images/6-han.png")],
  ),
  caption: [Chemical formula [Left] and chemical structure [right] of HAN.],
  supplement: [Figure],
  kind: figure,
)<6-han>

=== Green Monopropellants: ADN

ADN or ammonium dinitramide is another ionic liquid based compound which is mixed with methanol, water and ammonia to yield a usable monopropellant. The chemical formula as well as the chemical structure are shown in *@6-adn*.

#figure(
  grid(
    columns: 2,
    [#move(
      dx: -0.5cm,
      dy: 1cm,

      [#ce("[NH4][N(NO2)2]")],
    )],
    [#image("images/6-adn.png")],
  ),
  caption: [Chemical formula [Left] and chemical structure [right] of ADN.],
  supplement: [Figure],
  kind: figure,
)<6-adn>

=== Green Monopropellant: Hydrogen Peroxide

Hydrogen peroxide (#ce("H2O2")) can also be used as a monopropellant where it decomposes over a catalyst bed into oxygen and water, however the efficiency of hydrogen peroxide as a monopropellant has a lower $I_(s p)$ than the other monopropellant options.

=== Comparison of Green Monopropellants and Downsides

A table showing the performance of green monopropellents in comparison with traditional monopropellants (hydrazine) is shown in *@6-mono-performance*.

#figure(
  table(
    columns: 5,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Name*][*Density $g"/"m^3$*][*Specific Impulse $s$*][*Temperature $degree C$*][*Density Specific Impulse $s dot g"/"m^3$*],
    [Hydrazine], [1.01], [230], [1120], [232],
    [ADN-based LMP-103S], [1.24], [244], [1600], [302],
    [HAN-based AF-M315E], [1.46], [248], [1900], [362],
    [98% Hydrogen Peroxide], [1.439], [198], [955], [285],
  ),
  caption: [Performance of hydrazine vs green monopropellants],
)<6-mono-performance>

Some of the main downsides or caveats of green monopropellants are:

- *High temperatures* which require more exotic materials or active cooling.
- *Pre-heating of thruster* up to high temperatures to reach equilibrium temperature of reaction.
- Exact compositions are *owned by companies*.

== Propellent Feed Mechanisms

There exist two main propellent feed mechanisms, these are *pressure driven* and *pump driven*. A system level image for both methods is shown in *@6-feed-systems*.

#figure(
  image("images/6-feed-systems.png"),
  caption: [Pressure driven feed system [Left], pump driven feed system [Right]],
  supplement: [Figure],
  kind: figure,
)<6-feed-systems>

For launch vehicles which require higher $I_(s p)$, higher thrust, higher pressures and higher flow rates a *pump driven* system is usually chosen. For spacecraft which require less weight, lower pressures and volume, a *pressure driven* system is chosen.

=== Pump Driven Propellent Systems: Turbopumps

Turbopumps pressurize the propellent before it enters the combustor, allowing for much higher pressures and flow rates. An example of a turbopump is shown in *@6-turbopump*.

#figure(
  image("images/6-turbopump.png"),
  caption: [Spacecraft turbopump.],
  supplement: [Figure],
  kind: figure,
)<6-turbopump>

The working principle of a turbopump is that:

+ Propellent enters through the *propellent inlet*.
+ The *inducer* gradually increases the propellent pressure by a small bit, decreasing the chance of cavitation (like pre-stage fan in a jet engine).
+ *Impeller* increases the pressure and kinetic energy of the flow by rotating it axially out of the turbopump.
+ A *diffuser/volute* is placed at the exit of the impeller and converts any kinetic energy the flow has into static pressure.
+ This system is all driven by the *turbine* which is connected on the same shaft as the inducer and impeller. It takes hot energetic flow from the *combustor* and extracts work from it to drive the pump.

=== Pump Driven Propellent Systems: Open VS Closed Cycle

A pump driven propellent system can be categorized on whether the exhaust from the turbopumps is fed back into the main combustion chamber (*closed cycle*) or if it is dumped externally (*open cycle*). System level diagrams of these are shown in *@6-open-closed-systems*.

#figure(
  grid(
    columns: 2,
    column-gutter: 0.1cm,
    [#image("images/6-open-cycle.png", width: 70%)], [#image("images/6-closed-cycle.png", width: 70%)],
  ),
  caption: [Open cycle propellent feed system [Left], closed cycle propellent feed system [Right].],
  supplement: [Figure],
  kind: figure,
)<6-open-closed-systems>

While open cycle systems are simpler as the turbine's of the turbopump are operated at a lower relative pressure, the closed cycle systems offer higher efficiency ($I_(s p)$) at the cost of added complexity due to a much higher turbine pressure (turbine pressure must be close to or match combustion pressure.)

=== Open Cycle Pump Driven Propellent Systems: Gas Generator

In this system, a small amount of fuel and oxidizer are burnt in a *gas generator* (burnt *fuel rich*, keeping temperature low). The exhaust of the gas generator then powers the turbopumps. These systems are *simpler* and have a *lower mass* but have a *lower efficiency* (due to wasting fuel) than closed cycle systems by a few percent. An image of such a systems is shown in *@6-gas-generator*.

#figure(
  image("images/6-gas-generator.png", height: 20%),
  caption: [A system level image of a open cycle, gas generator, pump driven propulsion system.],
  supplement: [Figure],
  kind: figure,
)<6-gas-generator>

=== Closed Cycle Pump Driven Propellent Systems: Staged Combustion

Similar to the gas generator system, some fuel and oxidizer are brunt in a *pre-combustor* which drives the turbines. The difference here, is that the exhaust is then piped into the main combustor. This system allows for *higher efficiencies* at the cost of *higher pre-combustor temperatures and pressures*. Note that the pre-combustor is less fuel rich than before, allowing for higher pressures. The pressure in teh pre-combustor *must be higher* than the main combustor to avoid backflow, increasing complexity. An image of such a systems is shown in *@6-staged-combustion*.

#figure(
  image("images/6-staged-combustion.png", height: 20%),
  caption: [A system level image of a closed cycle, staged combustion, pump driven propulsion system.],
  supplement: [Figure],
  kind: figure,
)<6-staged-combustion>

=== Closed Cycle Pump Driven Propellent Systems: Expander Cycle

In this cycle, the turbines are driven by the fuel which is used to cool the nozzle. During the cooling process, the fuel is heated into a gas which is used to drive the turbines. Note that for this system, an initial starter or ignition is required in order to start the system. An image of such a systems is shown in *@6-expander*.

#figure(
  image("images/6-expander.png", height: 20%),
  caption: [A system level image of a closed cycle, expander cycle, pump driven propulsion system.],
  supplement: [Figure],
  kind: figure,
)<6-expander>

=== Pump Driven Propellent Systems: Comparing cycles

#figure(
  image("images/6-comparison-table.png", height: 30%),
  caption: [Comparison of different pump driven rocket engines.],
  supplement: [Figure],
  kind: figure,
)

// When you get to regenerative cooling , mention specific heat and specific vaporization as this is how much energy can get dumped into the fuel/oxidizers
