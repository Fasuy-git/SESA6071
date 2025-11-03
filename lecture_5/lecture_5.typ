#import "../template.typ": *

= Lecture 5

== Nozzle Designs and the Perfect Nozzle

Ideally a nozzles expansion ratio $A_e "/" A_t$ should increase as the rocket increases in altitude so that the flow is constantly ideally expanded. Some rockets achieve this using a skirt which drops down at higher altitudes to increase $A_e "/" A_t$. Some nozzle designs are shown in *@5-nozzle-designs*

#figure(
  image("images/5-nozzle-designs.png", width: 80%),
  caption: [Various nozzle designs.],
  supplement: [Figure],
  kind: figure,
)<5-nozzle-designs>

== Conical Nozzles

Conical nozzles are a relatively simple nozzle design that is also easy to manufacture. There are various parameters that control, the shape of a conical nozzle, these are depicted within *@5-conical-nozzle*.

#figure(
  cetz.canvas({
    import cetz.draw: *
    arc(
      (0, 0),
      start: 0deg,
      stop: 90deg,
      radius: (3, 1),
      name: "converging-section",
    )
    arc(
      (1.35, -0.9),
      start: -70deg,
      stop: -180deg,
      radius: 1,
      name: "throat-section",
    )
    circle(
      (1, 0.05),
      radius: 1,
      stroke: (dash: "dashed"),
      name: "Rt-circle",
    )
    line(
      (1, 0.05),
      (1.7, 0.8),
      mark: (symbol: ">"),
      name: "r1",
    )
    content("r1.mid", $bold(R_1)$, anchor: "west", padding: -14pt)
    line(
      (1.35, -0.9),
      (8, 2),
      name: "nozzle-section",
    )
    line(
      (-3, -2.5),
      (8, -2.5),
      stroke: (dash: "dashed"),
      name: "center-line",
    )
    line(
      (0.9, -1),
      (0.9, -2.5),
      mark: (symbol: ">"),
      name: "rt",
    )
    content("rt.mid", $bold(R_t)$, anchor: "east", padding: 5pt)
    line(
      (4.1, 0.3),
      (6.5, 0.3),
      stroke: (dash: "dashed"),
      name: "theta-reference-line",
    )
    arc(
      (6.5, 0.3),
      start: -20deg,
      stop: 40deg,
      mark: (symbol: ">"),
      name: "theta",
    )
    content("theta.mid", $bold(theta_e)$, anchor: "east", padding: 5pt)
  }),
  caption: [Definitions for a conical nozzle],
  supplement: [Figure],
  kind: figure,
)<5-conical-nozzle>

Where:
- *$R_t$*: Throat radius ($m$).
- *$R_1$*: Throat radius of curvature ($m$) $approx 1.5 times R_t$
- *$theta_e$*: Cone divergence half angle ($degree "or" "Rad"$)

#pagebreak()

Ideally $theta_e approx 12 degree - 18 degree$ with:
- *Smaller angles* constituting a larger $I_(s p)$ but higher mass and more complexity
- *Larger angles* constituting a lower $I_(s p)$ but lower mass.

One issue with conical nozzles is that the flow does not all go directly straight out of the nozzle, it is instead directed outwards slightly at the edges. This introduces losses which are characterized by *@5-conical-correction-factor* and are only applied to the *momentum term*. This is then applied to $C_F$.

$
  lambda & = 1/2(1+cos theta_e)
  \
  C_F(lambda, k, P_e, P_a, A_e, P_c, A_t) & = lambda sqrt((2k^2)/(k-1) (2/(k+1))^((k+1)/(k-1)) (1 - (P_e/P_c)^((k-1)/k))) + ((P_e - P_a) A_e)/(P_c A_t)
$<5-conical-correction-factor>

== Bell (Rao) Nozzles

Bell nozzles have typically higher efficiency than conical by allowing the flow to quickly expand whilst it has high pressure and then slowly redirecting the flow to be as axial as possible by the end. An image showing the key dimensions for a bell nozzle are shown in.

#figure(
  image("images/5-bell-nozzle.png", width: 70%),
  caption: [Bell nozzle dimensions.],
  supplement: [Figure],
  kind: figure,
)<5-bell-nozzle>

Note that the bell curve will have a *point of inflection * along it. The coordinates of the inflection point are given by *@5-rao-inflection-coordinates* the following coordinates relative to the center of the throat (where $R_t$ is measured from).

$
  X_n = R_t sin theta_N quad quad Y_n = R_t + R_1(1-cos theta_e)
$<5-rao-inflection-coordinates>

Note that $theta_N$ here is the angle that the line at the inflection point makes with the horizontal datum (initial large divergence angle). If the initial diverging section of the nozzle is conical then this would be the cone angle for that portion. The equation for the parabolic low divergence angle section is shown in *@5-rao-nozzle-equations*.


$
  y' = P x' + Q + (S x' +T)^0.5
  \
  P=(y'_E tan theta_N + y'_E tan theta_E - 2 x'_E tan theta_E tan theta_N)/(2 y'_E - x'_E tan theta_M - x'_E tan theta_E)
  quad
  S = ((y'_E - P x'_E)^2(tan theta_N - P))/(x'_E tan theta_N - y'_E)
  \
  Q = S/(2(tan theta_N - P)) quad T = Q^2
$<5-rao-nozzle-equations>

Note that in *@5-rao-nozzle-equations* any terms with a subscript of $E$ are the coordinates and angles relating to the exit of the nozzle and the coordinates themselves are relative to the inflection point. Typically $theta_E approx 2 degree - 8 degree$. The length of a bell nozzle is compared to a 15$degree$ conical nozzle using *@5-15-length*.

$
  L_15 = eta_"Bell" (R_T (sqrt(epsilon) - 1) + R_1 (1/(cos theta_e) - 1))/(tan theta_e)
$<5-15-length>

Where:
- *$L_15$*: Length of a 15 $degree$ conical nozzle ($m$).
- *$epsilon$*: Expansion ratio $= A_e "/" A_t$
- *$theta_e$*: Divergence angle at exit ($degree "or Rad"$)
- *$eta_"Bell"$*: Percentage of full bell.

To obtain an values for $theta_E, theta_N "and" epsilon$ for a given value of $eta_"Bell"$ then  *@5-bell-curves* can be used.

#figure(
  image("images/5-bell-curves.png", width: 70%),
  caption: [Bell curves for various values of $eta_"Bell"$.],
  supplement: [Figure],
  kind: figure,
)<5-bell-curves>

== Aerospike Nozzles

Aerospike nozzles are a version of altitude compensating engine where the external air pressure changes the value of $A_(e "Effective")$ as it rises in altitude. They commonly feature many smaller combustion chambers which then have their exhausts directed onto a spike. The two main types of aerospike engines (shown in *@5-nozzle-designs*) are:

- *Full Aerospike*: Feature a full length spike where there is no recirculation region, however the end of the spike is typically difficult to cool.

- *Truncated Aerospike*: The end of the spike is missing which allows for better cooling at penalty of lower performance.

Aerospikes can come in linear and annular forms. They are typically smaller than typical bell nozzles and can still vector thrust by controlling the thrust coming from individual combustion chambers. They haven't yet had much proven flight experience and lack any larger surface area examples.

== Expansion Deflection Nozzle

Make use of a pintle at the center of the nozzle which redirects the flow along the walls of the nozzle (again shown in *@5-nozzle-designs*). At low altitudes a large recirculation area caused by the high ambient pressure causes a smaller value of $A_(e)$. At higher altitudes the lower ambient pressure means the recirculation area is much smaller and the value of $A_(e)$ is bigger. These engines haven't seen much use with one issue being keeping the pintle itself cool.

#lecture("Intro to Liquid Propulsion", 2, 3)

There are three main sub categories within liquid propulsion, these are shown in the bullet pointed list below. The relative performance of these liquid propulsion methods is shown in *@5-different-liquid-propulsion-methods*:


#figure(
  table(
    columns: 5,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Type*][*$I_(s p) (s)$*][*$T_(m a x)(degree C)$*][*Thrust ($N$)*][*Propellants*],
    [Monopropellant], [200 - 250], [600 - 800], [0.03 - 100], [#ce("N2H4, H2O2")],
    [Bipropellant], [200 - 468], [2500 - 4100], [$lt.eq 10 "MN"$], [#ce("N2H4, H2, Kerosene, N2O4")],
    [Cold Gas], [50 - 100], [N/A], [0.01 - 270], [#ce("He, H2, Kr, N2")],
  ),
  caption: [Typical liquid propellent parameters.],
)<5-different-liquid-propulsion-methods>

- *Bipropellant*: Mix together a liquid fuel and liquid oxidizer and combust them to produce thrust.

- *Monopropellent*: Flow a liquid fuel over a catalyst bed where it undergoes a exothermic decomposition reaction.

- *Cold Gas*: A gas is stored at pressure where it is released and flows through a nozzle to accelerate it.

From *@3-exhaust-velocity*, a good rocket engine will maximize and minimize the following parameters:

- *Low molecular weight* of *combustion products* $W$. This is also why typically rocket engines operate fuel rich as the low molecular weight fuel dominates the reaction.

- *High combustion temperature* $T_c$.

- *High combustion pressure* $P_c$, though there is a smaller gain from this parameter.

- *Low ratio of specific heats* $k$, though there is a smaller gain from this parameter. Typically $k$ sits at about one anyways.

#pagebreak()
