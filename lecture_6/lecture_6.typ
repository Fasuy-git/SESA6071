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


// When you get to regenerative cooling , mention specific heat and specific vaporization as this is how much energy can get dumped into the fuel/oxidizers
