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


