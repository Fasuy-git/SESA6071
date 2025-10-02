#import "../template.typ": *

= Lecture 2

== Definitions and Fundamentals

To develop a empirical measure of performance we should first consider *@2-total-impulse*.

$
  I_(t) = integral^t_0 F #h(0.5em) d t
$<2-total-impulse>

Where:
- *$I_(t)$* : Total Impulse ($N s$)
- *$F$* : Thrust Force ($N$)
- *$t$* : Burn Duration ($s$)

Note that for *@2-total-impulse*, if $F$ is constant then the equation simplified to $I_(t) = F t$. A more useful measure of performance for rocket engines is shown in *@2-specific-impulse*.

$
  I_(s p) = (
  integral^t_0 F #h(0.5em) d t
  )
  /
  (
  g_0 integral^t_0 accent(m, dot) #h(0.5em) d t
  )
  =
  (
  I_t
  )
  /
  (
  g_0 integral^t_0 accent(m, dot) #h(0.5em) d t
  )
$<2-specific-impulse>

Where:
- *$I_(s p)$* : Specific Impulse ($s$)
- *$g_0$* : Standard Gravitational Accel ($"m/"s^2$) = $9.81 "m/"s^2$
- *$accent(m, dot)$* : Propellent mass flow rate ($k g"/"s$)

There is no concrete reason on why $g_0$ is present in this equation, however one common theory is that it allows $I_(s p)$to be in seconds instead of featuring a length unit which would eliminate any error in conversion from metric to imperial. If $F$ and $accent(m, dot)$ are both constant over the $t$ then *@2-specific-impulse* simplifies to *@2-constant-total-impulse*.

$
  I_(s p) = I_t / (g_0 m_p)
$<2-constant-total-impulse>

Where:
- *$m_p$*: Expelled propellent mass ($k g$) = $accent(m, dot) t$

Another useful parameter for defining engine performance is shown in *@2-exhaust-velocity*.

$
  c = F / accent(m, dot)
$<2-exhaust-velocity>

Where:
- *$c$*: Effective exhaust velocity ($m "/" s$)

The exhaust velocity is called as such as the *velocity profile of the exhaust is not uniform*, this is most seen in chemical rockets due to the *no slip condition* but is slightly seen in electrical rockets too. Rearranging all of the previous equations together yields a definition for $I_(s p)$ in terms of $c$.

$
  I_(s p) = c / g_0
$

Typical $I_(s p)$ values for the rocket engine types defined in the previous lecture are shown in *@2-typical-isp*.

#figure(
  table(
    columns: 2,
    fill: (col, row) => (
      if row == 0 {
        gray
      } else { white }
    ),
    align: center + horizon,
    [*Rocket Engine Type*], [*$I_(s p) (s)$*],
    [Chemical Using $H_2 "/" O_2$], [450],
    [Solid], [260],
    [Cold Gas], [70],
    [Gridded Ion Thruster], [3000],
  ),
  caption: [Typical values of $I_(s p)$],
)<2-typical-isp>

== Maximum Chemical Performance

A typical chemical reaction used in chemical rockets is combustion shown in *@2-combustion-equation*.

$
  #ce("H2 + 1/2 O2 -> H2O + Energy")
$<2-combustion-equation>

// Add section on how energy is released as this is an exothermic reaction
