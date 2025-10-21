#import "../template.typ": *

= Lecture 4

== Nozzle Expansion Ratio Equation

Momentum conservation can be applied between the exhaust and the throat to yield an expression including $A_t "and" A_e$, this expression is shown in *@4-expansion-basic*.

$
  accent(m, dot) = rho_t A_t v_t = rho_e A_e v_e quad \u{2192} quad A_t / A_e = (rho_e v_e)/(rho_t v_t)
$<4-expansion-basic>

Equations for $v_e, v_t "and" rho_e"/"rho_t$ have already been defined and so by substituting *@3-mass-flow-rate-velocity-throat*, *@3-exhaust-velocity* and *@3-exhaust-velocity-isentropic* into *@4-expansion-basic* will yield *@4-expansion-complex*.

$
  A_t/A_e = ((k+1)/2)^(1/(k-1)) (P_e/P_c)^(1/k) sqrt((k+1)/(k-1)(1-P_e/P_c)^((k-1)/k))
$<4-expansion-complex>

Note that for low altitude rockets $A_e/A_t approx 3 - 25$ and for high altitude rockets $A_e/A_t approx 40 - 200$.

== Characteristic Velocity Equation

The characteristic velocity was first defined in *@2-characteristic-velocity-equation*. It can be rewritten in terms of the equations that have been previously defined to yield *@4-characteristic-velocity*.

$
  c^* = (P_c A_t )/accent(m, dot) =sqrt((k R T_c)/W)/(k sqrt(2/(k + 1))^((k+1)/(k-1)))
$<4-characteristic-velocity>

Note that for a liquid oxygen, liquid hydrogen bipropellant rocket, $c^* approx 2300 m"/"s$ and for an ammonium perchlorate + polymer + Al solid rocket, $c^* approx 1590 m"/"s$.

== Thrust Equation

Similarly to characteristic velocity, the thrust can be written in terms of the equations that have just been derived, mainly *@3-exhaust-velocity* and *@3-mass-flow-rate-complex* to yield *@4-thrust*.

$
  F = accent(m, dot) v_e + (P_e - P_a)A_e = A_t P_c
  sqrt((2k^2)/(k-1) (2/(k+1))^((k+1)/(k-1)) (1-(P_e/P_c)^((k-1)/k))) + (P_e - P_a)A_e
$<4-thrust>

== Coefficient of Thrust Equation

A useful parameter when quantifying the performance of a nozzle is the coefficient of thrust $C_F$. The definition of $C_F$ as well as the equation after substituting *@4-thrust* ito it are shown in *@4-thrust-coeff*.

$
  C_F = F/(P_c A_t) = sqrt((2k^2)/(k-1) (2/(k+1))^((k+1)/(k-1)) (1-(P_e/P_c)^((k-1)/k))) + ((P_e - P_a) A_e)/(P_c A_t)
$<4-thrust-coeff>

Values of $C_F approx 0.8 - 1.9$ with a higher value meaning better thrust amplification. $C_F$ is a peak when there is ideal expansion ($P_e = P_a$) at a constant $P_a"/"P_c$. Note that the equation has a *momentum part* and a *pressure part* similar to the thrust itself. The behavior of the $C_F$ against the area and pressure ratios is shown in *@4-CF-plot*

#figure(
  image("images/4-cf-plot-1.png"),
  caption: [Plot of $C_F$ against area and pressure ratios],
  supplement: [Figure],
  kind: figure,
)<4-CF-plot>

Note that as the area ratio increases the momentum component increases but the pressure component decreases. This is interesting as the area ratio *does not appear in the momentum section of the equation*. In reality there is a still a dependency as area ratio depends on pressure ratio  which is present in the area ratio equation. Another plot is shown in *@4-CF-plot-2*.

#figure(
  image("images/4-cf-plot-2.png", width: 80%),
  caption: [Plot of $C_F$ against area ratio for varying pressure ratios],
  supplement: [Figure],
  kind: figure,
)<4-CF-plot-2>

Note that in *@4-CF-plot-2*, increasing the pressure ratio will decrease the thrust coefficient. The highest possible thrust coefficient is given when the pressure ratio is zero such as in a vacuum.

== Summary of Equations

$
  v_e (R, W, k, T_0, P_e, P_0) & = sqrt((R/W) (2k)/(k-1) T_0 (1 - (P_e/P_0)^((k - 1)/k)))
  \
  accent(m, dot)(A_t, rho_c, k, R, T_c, W) & = (A_t rho_c k) / sqrt((k R T_c)/(W)) sqrt((2/(k+1))^((k+1)/(k-1)))
  \
  A_t/A_e (k, P_e, P_c) & = ((k+1)/2)^(1/(k-1)) (P_e/P_c)^(1/k) sqrt((k+1)/(k-1) (1 - (P_e/P_c)^((k-1)/k)))
  \
  c^*(T_c, k, R, W) & = sqrt((k R T_c)/W) / (k sqrt((2/(k + 1))^((k+1)/(k-1))))
  \
  F(A_t, P_c, k, P_e, A_e, P_a) & = A_t P_c sqrt((2k^2)/(k-1) (2/(k+1))^((k+1)/(k-1)) (1 - (P_e/P_c)^((k-1)/k))) + (P_e - P_a) A_e
  \
  C_F(k, P_e, P_a, A_e, P_c, A_t) & = sqrt((2k^2)/(k-1) (2/(k+1))^((k+1)/(k-1)) (1 - (P_e/P_c)^((k-1)/k))) + ((P_e - P_a) A_e)/(P_c A_t)
$<4-summary-of-equations>

== Equations Involving Mach Relations

Many of the previous equations can be represented in terms of mach number, namely *@3-exhaust-velocity-isentropic*, which are shown in *@4-mach-relations*.

$
  T_0 = T(1 + 1/2 (k - 1)M^2) quad P_0 = P(1 + 1/2 (k - 1)M^2)^((k)/(k-1)) quad rho_0 = rho (1 + 1/2 (k - 1)M^2)^(1/(k-1))
$<4-mach-relations>

The Mach relations can be applied to *@4-expansion-complex* to yield an expression fr the area ratio in terms of Mach number shown in *@4-area-ratio-mach*.

$
  A_y/A_x = M_x/M_y sqrt(((1 + 1/2(k-1)M_y^2)/(1 + 1/2(k-1)M_x^2))^((k+1)/(k-1)))
$<4-area-ratio-mach>

*@4-area-ratio-mach* shows that area ratio is directly proportional top the Mach ratio. Furthermore this equation is also proportional to coefficient of thrust as was previously states, and this relation is also shown in *@4-CF-mach*.

#figure(
  image("images/4-cf-mach.png", width: 80%),
  caption: [Plot of $C_F$ against exit Mach number for varying pressure ratios],
  supplement: [Figure],
  kind: figure,
)<4-CF-mach>

*@4-CF-mach* is effectively the same as *@4-CF-plot-2* apart from altering the x-axis. A larger mach number will require a larger area ratio which will drive up the $C_F$ as it depends on the pressure ratio  which is proportional.

== Coefficient of Thrust for Converging Nozzles

*@4-CF-mach* can be further edited to yield a neater plot. To get to this, consider the pressure equation in *@4-mach-relations* when there is no diverging nozzle. This would mean that $M_e = 1$ and *@4-mach-relations* can therefore be then written as *@4-sonic-pressure-ratio*.

$
  P_c/P_e = (1+1/2(k-1)M_e^2)^(k/(k-1)) quad "If" M_e = 1 \u{2192} quad P_e/P_c = (2/(k+1))^(k/(k-1))
$<4-sonic-pressure-ratio>

*@4-sonic-pressure-ratio* can be substituted into *@4-thrust-coeff* to yield an equation for $C_F$ for the converging section of the nozzle, this is shown in *@4-thrust-coeff-conv*.

$
  C_(F "Converging") = (k+1)(2/(k+1))^(k/(k-1)) - P_a/P_c
$<4-thrust-coeff-conv>

Using *@4-thrust-coeff-conv* a modified version of *@4-CF-mach* can be plotted, this plot is shown in *@4-CF-CFConv*. This plot now has a point where all lines roginiate, when the ratio of $C_F "/" C_(F "Converging") = 1$ and $A_e "/" A_t = 1$ when there is no diverging section at all.

#figure(
  image("images/4-cf-cfconv-plot.png", width: 80%),
  caption: [Plot of $C_F "/" C_(F "Converging")$ against exit area ratio for varying pressure ratios],
  supplement: [Figure],
  kind: figure,
)<4-CF-CFConv>

== Under, Ideal and Over Expanded Nozzles

Depending on the relationship between the exit pressure $P_e$ and the ambient pressure $P_a$, there are three cases of nozzle exhaust flow, these are:

- *Under-expanded* ($P_e > P_a$):
  - Typically occurs at *high altitudes* and happens when the *nozzle is too short* .Exhaust wasn't expanded enough and so expands out the back of the nozzle via expansion waves.
  - $C_F$ and thrust are *below maximum*.

#figure(
  image("images/4-underexpanded.png", width: 50%),
  caption: [Under-expanded flow out of a nozzle],
  supplement: [Figure],
  kind: figure,
)<4-underexpanded>

- *Ideally Expanded* ($P_e approx P_a$):
  - *Nozzle is perfect length* and exhaust exits in a perfect rectangular plume with no losses or shocks.
  - $C_F$ and thrust are *maximized*.
  - $v_e = c$, exhaust velocity is equal to effective exhaust velocity.

#pagebreak()

- *Over-expanded* ($P_e < P_a$):
  - Typically occurs at *low altitudes* and happens when the *nozzle is too long*. Exhaust is at a lower pressure than ambient causing shocks and possible flow separation within the nozzle.
  - $C_F$ and thrust are *below maximum*.

#figure(
  image("images/4-overexpanded.png", width: 50%),
  caption: [Over-expanded flow out of a nozzle],
  supplement: [Figure],
  kind: figure,
)<4-overexpanded>


Plotting the behavior of the thrust coefficient against pressure ratio and the area ratio yields *@4-CF-pressure-ratio*. Note that the value of $C_F$ is maximized when $P_e = P_a "and" P_e "/" P_a = 1$.

#figure(
  image("images/4-cf-pressure-ratio.png", width: 80%),
  caption: [Plot of $C_F$ against pressure ratio and area ratio],
  supplement: [Figure],
  kind: figure,
)<4-CF-pressure-ratio>

=== Summerfield Criterion

The Summerfield criterion applies to heavily over-expanded nozzles and describes when the flow is likely to separate from inside of the nozzle and create shocks. The criterion is shown in *@4-summerfield*.

$
  P_e < (0.25 "to" 0.4) P_a
$<4-summerfield>

*@4-summerfield* as well as the line of ideal expansion can be applied to *@4-CF-CFConv* to produce *@4-CF-expansion*.

#figure(
  image("images/4-cf-expansion.png", width: 80%),
  caption: [Plot of $C_F "/" C_(F "Converging")$ against exit area ratio for varying pressure ratios with summerfield criterion and ideal expansion line.],
  supplement: [Figure],
  kind: figure,
)<4-CF-expansion>

On *@4-CF-expansion*, the red dotted line represents ideal expansion. *Below this line* sits *over-expanded flow*. *Above this line* sits *under-expanded flow*. *Below the yellow and blue lines* sits *super over-expansion* when the Summerfield criterion applies. Note that a typical rocket fired at sea level will undergo the following movements through this graph:

+ Initially *over-expanded* at sea level.
+ As the altitudes rises the rocket engine moves vertically upwards on the graph and the engine becomes less and less over-expanded until it is *ideally-expanded*.
+ As the rocket ascends further, the engine starts to become *under-expanded* and thrust and $C_F$ start to decrease.

#pagebreak()
