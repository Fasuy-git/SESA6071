#import "../template.typ": *

#lecture("Lecture 13", 1, 7)

== Introduction to Plasma

A useful definition for plasma is a *a quasineutral gas of charged and neutral particles which exhibits collective behavior*. A plasma is formed when atoms gain enough energy (through heating or through other means) to be stripped of their electrons. As the plasma is a "soup" of ions, electrons and particles, the plasma as a whole will be *quasineutral*. The plasma itself will exhibit a *collective behavior* as ions and electrons will all experience electrostatic forces between one another.

== Debye Length

One Fundamental property of a plasma is the *Debye length* shown in *@13-debye-length*.

$
  lambda_D = sqrt((epsilon_0 k T_e)/(n e^2))
$<13-debye-length>

Where:

- *$epsilon_0$*: Permittivity of free space $= 8.85 times 10^(-12) m^3 k g^(-1) s^4 A^2$
- *$k$*: Boltzmann's constant $= 1.38 times times 10^(-23) J K^(-1)$
- *$e$*: Electron charge $= 1.6 times 10^(- 19) C$
- *$T_e$*: Electron temperature ($K$)
- *$n$*: Plasma density (Number of Particles/$m^3$)

Note that as the plasma is quasineutral, the density of ions and electrons must be the same. Further note that the electron temperature will be higher than the ion and particle temperature as the electrons are able to reach higher temperatures. To understand what the Debye length is, consider the scenario shown in *@13-debye-length-figure*.

#figure(
  image("images/13-debye-length.png", width: 70%),
  caption: [Figure of potential applied across a plasma with a plot of teh potential difference against the distance away from the anode/cathode.],
  supplement: [Figure],
  kind: figure,
)<13-debye-length-figure>

As a potential is applied across a plasma, the ions and electrons form a sheath around the cathode and anode respectively. This acts to neutralize the effect of the potential difference applied to the plasma. One key point is that the *debye length must be smaller than the size of the container* for the substance within it to be considered a plasma.
#pagebreak()
