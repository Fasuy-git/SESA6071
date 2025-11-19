#import "../template.typ": *

= Lecture 10

== Thrust Chambers

The thrust chamber is where combustion/burning occurs. Here liquid propellent is injected, atomized, vaporized, mixed and burnt. Chamber volume is typically maximized and depends on heat, propellent used, heating and manufacturing constraints. The key dimensions for a thrust chamber are shown in *@10-thrust-chamber-diagram*.

#figure(
  cetz.canvas({
    import cetz.draw: *

    let arrow-style = (
      mark: (end: "stealth", fill: black, scale: 1.),
      stroke: (thickness: 1pt),
    )

    // Injectors and LHS
    rect((0, 1.5), (0.25, 1.5 - 0.5625), fill: black.transparentize(50%))

    line((-0.5, 1.5 - 0.5625 - 0.25 / 2), (0.75, 1.5 - 0.5625 - 0.25 / 2), ..arrow-style)

    rect((0, 1.5 - 0.5625 - 0.25), (0.25, 1.5 - 2 * 0.5625 - 0.25), fill: black.transparentize(50%))

    line((-0.5, 0), (0.75, 0), ..arrow-style)

    rect((0, 1.5 - 2 * 0.5625 - 2 * 0.25), (0.25, 1.5 - 3 * 0.5625 - 2 * 0.25), fill: black.transparentize(50%))

    line((-0.5, 1.5 - 3 * 0.5625 - 2 * 0.25 - 0.25 / 2), (0.75, 1.5 - 3 * 0.5625 - 2 * 0.25 - 0.25 / 2), ..arrow-style)

    rect((0, 1.5 - 3 * 0.5625 - 3 * 0.25), (0.25, 1.5 - 4 * 0.5625 - 3 * 0.25), fill: black.transparentize(50%))

    // Nozzle
    line((0.25, 1.5), (3, 1.5), (5, .5), (7, 1.5))
    line((0.25, -1.5), (3, -1.5), (5, -.5), (7, -1.5))

    // Area ellipses
    arc((5.15, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.2, 0.5), stroke: (dash: "dashed"))
    circle((5.02, 0), radius: (0.2, 0.5), fill: black.transparentize(95%), stroke: 0pt)
    rotate(z: 180deg)
    arc((-4.9, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.2, 0.5))
    rotate(z: -180deg)

    arc((2.98, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.6, 1.5), stroke: (dash: "dashed"))
    circle((2.5, 0), radius: (0.6, 1.5), fill: black.transparentize(95%), stroke: 0pt)
    rotate(z: 180deg)
    arc((-2.05, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.6, 1.5))
    rotate(z: -180deg)

    // Exit
    arc((7.45, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.6, 1.5))

    rotate(z: 180deg)
    arc((-6.6, 0), start: 90deg, stop: -90deg, anchor: "center", radius: (0.6, 1.5))
    rotate(z: -180deg)

    content((-1, 0), [*Liquid Fuel and Oxidizer*], angle: 90deg)

    content((2.5, 0), $bold(A_1)$)
    content((4.5, -1.5), $bold(A_t)$)
    line((4.6, -1.2), (5.1, 0), ..arrow-style)

    line((0.25, 1.5), (0.25, 2.25))
    line((3, 1.5), (3, 2.25))
    line((5, .5), (5, 2.25))
    line((0.25, 2), (3, 2), mark: (symbol: ">"))
    line((3, 2), (5, 2), mark: (symbol: ">"))

    content((1.65, 2.25), $bold(L_1)$)
    content((4, 2.25), $bold(L_c)$)
  }),
  caption: [Thrust chamber dimensions.],
  supplement: [Figure],
  kind: figure,
)<10-thrust-chamber-diagram>

Note that in *@10-thrust-chamber-diagram*, the dimensions of the thrust chamber are simplified into conical sections. The volume of a combustion chamber is a key parameter and its formula is shown in *@10-combustion-volume*.

$
  V_c = A_1 L_1 + 1/3 A_1 L_c (1 + sqrt(A_t /A_1) + A_t /A_1)
  quad quad L* = V_c / A_t
$<10-combustion-volume>

Where:
#grid(
  columns: (1fr, 1fr),
  row-gutter: 0.3cm,
  [- *$V_c$* : Combustion volume ($m^3$).], [- *$A_1$* : Cylindrical section area ($m^2$).],
  [- *$L_1$* : Cylindrical section length ($m$).], [- *$L_c$* : Converging section length ($m$).],
  [- *$A_t$* : Throat area ($m^2$).], [- *$L*$* : Characteristic length ($m$).],
)

For the characteristic length shown in *@10-combustion-volume*, $L* approx 0.8 - 3 m$ and for monopropellants this value is even higher. The stay time for a droplet of fuel within the combustion chamber is shown in *@10-stay-time*.

$
  t_s = V_c / (accent(m, dot) V_1)
$<10-stay-time>

Where $t_s$ is the stay time and $V_1$ is the the volume per unit mass of propellant within the chamber. The stay time defines the time for vaporization, mixing and combustion of
the propellant and is experimentally determined with $t_s approx 0.001 - 0.04s$.

== Thrust Chamber:  Heat Transfer

Thrust chambers can reach very high temperatures due to the combustion and compression that takes place within them (for monopropellant $1000 K$ and for bipropellant $3000 K$). Nozzles must be designed to withstand this temperature as well as the associated stresses and the pressure from the exhaust itself. The temperature variation across a nozzle is shown in *@10-temperature-across-nozzle*.

#figure(
  image("images/10-temperature-accross-nozzle.png", width: 30%),
  caption: [Temperature variation over a nozzle.],
  supplement: [Figure],
  kind: figure,
)<10-temperature-across-nozzle>

These high temperatures require some form of cooling in order to stop the nozzle and combustion chamber from melting.

=== Radiation Cooling
In this method of cooling, a material is chosen with a high emissivity is chosen which allows for heat to be radiated away from the nozzle. This method works well for small - medium engines as well as engines beyond a certain expansion ratio. The material used must be able to withstand high temperatures, some commonly used materials are Niobium, rhenium, and carbon-carbon composites.

=== Regenerative Cooling
This method of cooling is widely used in launch vehicles and large engines. In this method a liquid (typically the fuel) flows around the nozzle and thrust chamber before it is fed into the combustion chamber, cooling the nozzle and thrust chamber. In this method *no energy is lost* and specific cooling can be achieved by varying the diameter and number of cooling channels. An image of a regenerativly cooled nozzle is shown in *@10-regen-cool-nozzle* and the associated temperature variation across the wall is shown in *@10-regen-cool-temp*.

#grid(
  columns: 2,
  row-gutter: auto,
  column-gutter: 1cm,
  [\
    \
    \
    #figure(
      image("images/10-regen-cooling-nozzle.png", width: 100%),
      caption: [Cross sectional schematic of a nozzle with regenerative cooling.],
      supplement: [Figure],
      kind: figure,
    )<10-regen-cool-nozzle>
  ],
  [#figure(
    image("images/10-regen-cooling-temp.png", width: 80%),
    caption: [Temperature and stress variation across the nozzle wall of a regenerativly cooled engine.],
    supplement: [Figure],
    kind: figure,
  )<10-regen-cool-temp>],
)

Note that in *@10-regen-cool-temp*, the stress variation across the wall is dominated by the thermal expansion gradient and not the hoop stress, causing a high stress reversal and complex stress state.

=== Film Cooling

This method of cooling is where a small amount of liquid (typically fuel) is injected (using injectors at the wall or top of teh chamber) along the wall to reduce the heat transfer. If fuel is injected, the oxygen/fuel ratio is altered, reducing the amount of combustion that takes place keeping the wall cool. However, film cooling *is only used as a secondary method* and it can also *cause significant performance reductions* due to the change on oxygen/fuel ratio. An image of film cooling is shown in *@10-film-cooling*.

#figure(
  image("images/10-film-cooling.png", width: 50%),
  caption: [Film cooling employed],
  supplement: [Figure],
  kind: figure,
)<10-film-cooling>

=== Ablative cooling

This method of cooling uses an layer of organic compound which at a certain temperature combusts and breaks away, removing heat energy with it. Typically, the liner consists of a fibre and resin (phenolics are used often) and can only be used as long as the ablative material exists within the engine. Ablative cooling is typically used *in solid rocket motors* where film and regenerative cooling cannot take place, an image of an ablatively cooled combustion chamber and nozzle are shown in

#figure(
  image("images/10-ablative-cooling.png", width: 50%),
  caption: [Ablative cooling on a solid rocket motor's nozzle and thrust chamber],
  supplement: [Figure],
  kind: figure,
)<10-ablative-cooling>

== Monopropellant Bed Loading

For monopropellent systems, it is important that the amount of catalyst is optimized, too much and there is wasted mass, type little and the bed is flooded, stopping decomposition from taking place. For a given thruster, a bed loading parameter, $G$ is known and using this parameter the area of the catalyst bed can be calculated using *@10-bed-loading*.

$
  G = accent(m, dot) / A_1
$<10-bed-loading>

Where:

- *$G$*: Catalyst bed loading ($k g "/" s m^2$)
- *$A_1$*: Catalyst bed area ($m^2$)
- *$accent(m, dot)$*: Propellent flow rate ($k g "/" s$)

Typically for small thrusters $G approx 1 - 10 k g "/" s m^2$ and for large rockets $G approx 10 - 100 k g "/" s m^2$. Once the value of $G$ is known for a thruster, the catalyst bed can be sized using this equation.

#pagebreak()
