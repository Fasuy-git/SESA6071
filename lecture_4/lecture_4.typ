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

Values of $C_F approx 0.8 - 1.9$ with a higher value meaning better thrust amplification. $C_F$ is a peak when there is ideal expansion ($P_e = P_a$) at a constant $P_a"/"P_c$. Note that the equation has a *momentum part* and a *pressure part* similar to the thrust itself.


//When you do the summary section, have them in the form V_e(R,W etc ...)
