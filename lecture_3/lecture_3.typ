#import "../template.typ": *

= Lecture 3

== Rocket Staging

The typical $Delta V$s required for different manoeuvre are shown in *@3-maneuver-delta-vs*.

#figure(
  table(
    columns: 2,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    table.header[*Manoeuvre*][*Req $Delta V$ (km/s)*],
    [Surface of Earth to LEO (inc drag and grav losses)], [9.5],
    [LEO to GEO (impulsive no plane change)], [3.95],
    [LEO to GEO (low thrust no plane change)], [4.71],
    [LEO to Lunar (impulsive)], [3.9],
    [LEO to Lunar (low thrust)], [8],
    [LEO to Mars (impulsive)], [5.7],
    [GEO station keeping], [50 m/s /year],
    [LEO station keeping], [< 25 m/s /year],
  ),
  caption: [Typical $Delta V$ values for different manoeuvre],
)<3-maneuver-delta-vs>

For a conventional chemical rocket, to reach LEO from the surface of the Earth, assuming an ideal mass ratio ($I_(s p) approx 450s, quad Delta V approx 9.5 k m "/" s, quad M_o "/" M_f approx 8.6$) then the mass fraction $mu$ would have to be $approx 90 %$, leaving 10% for the payload itself. This is mitigated through using *rocket staging*. Stages offer various benefits, the most prominent of which is the gain in $Delta V$ when compared with one stage. The expression of the $Delta V$ of a multistage rocket is shown in *@3-multistage-delta-v*.

$
  Delta V_("Total") & = Delta V_("Stage "1) + Delta V_("Stage "2) + ... + Delta V_("Stage "n) \
  Delta V_("Total") & = I_(s p "Stage "1) g_0 (M_(0 "Stage "1)/ M_(1 "Stage "1)) \
                    & + I_(s p "Stage "2) g_0 (M_(0 "Stage "2)/ M_(1 "Stage "2)) \
                    & + ... \
                    & + I_(s p "Stage "n) g_0 (M_(0 "Stage "n)/ M_(1 "Stage "n))
$<3-multistage-delta-v>

An image depicting the payload fraction against delta V is shown in *@3-staged-delta-v*.

#figure(
  image("images/3-staged-delta-v.png", width: 80%),
  caption: [Plot depicting the effect of staging on the $Delta V$ for a given payload fraction.],
  supplement: [Figure],
  kind: figure,
)<3-staged-delta-v>

== Launch Vehicle Dynamics

The key forced acting on a launch vehicle during launch are shown in *@3-launch-vehicle-forces*.

#figure(
  image("images/3-launch-vehicle-forces.png", width: 50%),
  caption: [Plot illustrating the forces present on a lunch vehicle.],
  supplement: [Figure],
  kind: figure,
)<3-launch-vehicle-forces>

Taking the forces shown in *@3-launch-vehicle-forces*, a differential expression can be generated for the motion of the craft, using Newton's second law, this is shown in

$
  M((d V)/(d t)) = F cos(alpha - delta) - M g sin(gamma) - D
$<3-launch-vehicle-dynamics-equation>

Where:

#grid(
  columns: 2,
  gutter: 0.5em,

  [- *$M$*: Total launch vehicle mass (kg)], [- *$V$*: Spacecraft velocity (m/s)],
  [- *$F$*: Thrust (N)], [- *$alpha$*: Angle of attack (° or rad)],
  [- *$δ$*: Gimbal angle (° or rad)], [- *$gamma$*: Flight path angle (° or rad)],
  [- *$θ$*: Pitch angle (° or rad) = $gamma + alpha$], [- *$D$*: Drag (N)],
)

Note that within *@3-launch-vehicle-dynamics-equation*, many of the terms depend on the time as well as on one another. These equations can be rearranged and manipulated to yield *@3-complex-launch-vehicle-dynamics* (assuming $V_0 approx 0, alpha approx 0, delta approx 0$).

$
  Delta V & = Delta V_("ideal") - Delta V_g - Delta V_D \
          & Delta V_("ideal") = overline(c) ln(M_0 / M_f) \
          & Delta V_g = integral_0^t_b g sin(gamma) d t \
          & Delta V_D = integral_0^t_b (D "/" M_0 )/(1-mu t"/"t_p)d t
$<3-complex-launch-vehicle-dynamics>

Note that for *@3-complex-launch-vehicle-dynamics*, $Delta V_g approx 1.1 k m "/" s, Delta V_D approx 0.2 k m "/" s$. Additionally a boost of 0.5 km/s can be gained by launching at the equator. Note that $overline(c)$ is an averaged effective exhaust velocity.


#lecture("Converging Diverging Nozzle", 2, 2)

All of the thermal rockets that were shown in *@1-rocket-propulsion-family-tree* will most likely use a converging diverging nozzle (De-Laval nozzle) to accelerate the hot exhaust gas and increase the thrust of the engine. They effectively *convert the gases thermal energy to kinetic energy*. Note that when considering gaseous or liquid flow in this module, the following assumptions will be made:

- The fluid used are homogeneous.
- The species are gaseous.
- No heat transfer across the rocket walls (adiabatic assumption).
- No friction and all boundary layer effects effects negligible
- No shock waves or discontinuities in the nozzle
- Gas composition does not change in the noz zle (frozen flow) (not necessarily true but will assume for simplification that all reactions occur in the combustion chamber)

A plot of how the temperature, pressure, velocity and Mach number change over the nozzle is shown in *@3-nozzle-parameter-plot*.

#figure(
  image("images/3-nozzle-parameter-plot.png", width: 50%),
  caption: [Plot of pressure, temperature, velocity and Mach number over a De-Laval nozzle.],
  supplement: [Figure],
  kind: figure,
)<3-nozzle-parameter-plot>

== Exit Velocity Equation

Utilizing the isentropic flow equations it is possible to derive equations for many of the nozzle and engine parameters that have been previously stated. To derive an expression for the *exit velocity* $v_e$ from isentropic flow equations, we first start with the expression for stagnation enthalpy and apply the following criteria shown in *@3-exhaust-velocity-enthalpy*.

$
      h_0 & = h_e + v_e^2/2 \
  c_p T_0 & = c_p T_e + v_e^2/2 quad cases(1. quad "Ideal gas", 2. quad c_p "is constant at a given" T)
$<3-exhaust-velocity-enthalpy>

Where:

#grid(
  columns: 2,
  row-gutter: 1em,
  [- *$h_0$*: Stagnation enthalpy ($J"/mol"$).], [- *$h_e$*: Enthalpy at nozzle exit ($J"/mol"$).],
  [- *$c_p$*: Specific heat at a constant pressure ($J"/mol"$).], [- *$T_0$*: Stagnation temperature ($T$).],
  [- *$T_e$*: Temperature at nozzle exit ($T$).],
)

This equation can be further developed by *assuming isentropic flow* from the stagnation point to the exhaust point. This allows for the isentropic flow equations to apply, which are shown in *@3-exhaust-velocity-isentropic*.

$
  T_0/T_e = (P_0/P_e)^((k-1)/k) = (rho_0/rho_e)^(k-1)
$<3-exhaust-velocity-isentropic>

Where:

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  [- *$P_0$*: Stagnation pressure ($p a$).], [- *$P_e$*: Pressure at nozzle exit ($p a$).],
  [- *$rho_0$*: Stagnation density ($k g "/" m^3$).], [- *$rho_e$*: Density at nozzle exit ($k g "/" m^3$).],
  [- *$k$*: Ratio of specific heats.],
)

Finally the last equation that is needed for a useful expression for $v_e$ is the equation for the specific heat capacity at a constant pressure $c_p$, this is shown in *@3-exhaust-velocity-cp*.

$
  c_p = R/W k/(k-1)
$<3-exhaust-velocity-cp>

Where:

#grid(
  columns: (1fr, 1fr),
  row-gutter: 1em,
  [- *$R$*: Molar gas constant ($J"/(mol "K)$).], [- *$W$*: Molecular weight ($k g"/mol"$).],
)

Using *@3-exhaust-velocity-cp*, *@3-exhaust-velocity-isentropic* and *@3-exhaust-velocity-enthalpy*, a useful expression for the exhaust velocity $v_e$ can be derived, this is shown in *@3-exhaust-velocity*.

$
  v_e
  =
  sqrt(R/W (2k)/(k-1) T_0 (1 -(P_e/P_0)^((k - 1)/k)))
$<3-exhaust-velocity>

*Where $T_0, P_0$ can be assumed to be the combustion conditions*. Alternatively, *@3-exhaust-velocity* can also be used to define the $I_(s p)$, shown in *@3-exhaust-velocity-isp* (*assuming ideal expansion*).

$
  I_(s p) = 1/g_0 sqrt(R/W (2k)/(k-1) T_0 (1 -(P_e/P_0)^((k - 1)/k)))
$<3-exhaust-velocity-isp>


To see what parameters effect the value of $v_e$ and what need sto be maximized, various plots are shown in *@3-exhaust-velocity-plots*.


#figure(
  grid(
    columns: 2,
    [#image("images/3-exit-velocity-pressure-ratio.png")], [#image("images/3-exit-velocity-k.png")],
  ),
  caption: [Plot of exit velocity for increasing $P_e "/" P_c$ ratios [Left], Plot of exit velocity for increasing $k$ ratios [Right]],
  supplement: [Figure],
  kind: figure,
)<3-exhaust-velocity-plots>

From *@3-exhaust-velocity-plots* it is clear to see that to maximize the value of $v_e$ the following optimizations of parameters must occur:

- *Minimizing the molecular weight *$M$* of the reactants* will have a substantial effect on $v_e$.
- *Maximizing the combustion temperature *$T_c$ will have a substantial effect on $v_e$.
- *Decreasing the ratio of* $P_e"/"P_c$ will have a small impact on $v_e$.
- *Decreasing the ratio of* $k$ will have a small impact on $v_e$.

== Mass Flow Rate Equation

Assuming chocked flow ($M_a @ "Throat" approx 1$), the mass flow rate $accent(m, dot)$ is given by the expression shown in *@3-mass-flow-rate-basic*.

$
  accent(m, dot) = rho_t A_t v_t
$<3-mass-flow-rate-basic>

Where:
- *$rho_t$*: Density at the throat ($k g "/" m^3$)
- *$A_t$*: Area of the throat ($m^2$)
- *$v_t$*: Velocity at the throat ($m"/"s$).

Ideally *@3-mass-flow-rate-basic* should be expressed in terms of chamber parameters. The first substitution that can be made is an expression for the velocity at the throat $v_t$ using the speed of sound equation, this equation is shown in *@3-mass-flow-rate-velocity-throat*. *@3-exhaust-velocity-enthalpy* can then be used to yield an expression for the stagnation/chamber pressure, shown again in *@3-mass-flow-rate-velocity-throat*.

$
  v_t = a = sqrt((k R T_t)/(W))
  \
  T_0 = T_t + v_t^2/(2 c_p) = T_t + (M_a sqrt((k R T_t)/(W)))^2/(2 c_p)
$<3-mass-flow-rate-velocity-throat>

Where:

#grid(
  columns: (1fr, 1fr),
  [- *$a$*: Speed of sound ($m"/"s$)], [- *$M_a$*: Mach number],
)

The next goal is to find expressions for the throat temperature and densities as this will then eliminate them from the equation. By using *@3-exhaust-velocity-cp*, *@3-exhaust-velocity-isentropic* and assuming that $M_t approx 1$ *@3-mass-flow-rate-Tt-rhot* can be derived for $T_t$ as well as for $rho_t$.

$
  T_t = (2T_c)/(k+1) quad quad rho_t = rho_c (2/(k+1) )^(1/(k-1))
$<3-mass-flow-rate-Tt-rhot>

Finally, *@3-mass-flow-rate-Tt-rhot* and *@3-mass-flow-rate-velocity-throat* can be substituted into *@3-mass-flow-rate-basic* to yield *@3-mass-flow-rate-complex*.

$
  accent(m, dot) = (A_t rho_c k) / sqrt((k R T_c)/(W)) sqrt((2/(k+1))^((k+1)/(k-1)))
$<3-mass-flow-rate-complex>
