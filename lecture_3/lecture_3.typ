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
