#import "../template.typ": *

= Lecture 17

== Ignition of Radiofrequency Ion thrusters

With electron bombardment it is easy to see that starting electron flow will cause the engine to ignite but with Radiofrequency Ion thrusters the process of ignition is not as clear.

By default, any gas will have some free electrons within it. The chance that the electrons will undergo a collision increases with teh pressure that teh gas is at. Therefore to ignite a Radiofrequency Ion thruster a *minimum pressure* must be achieve before there are enough electrons to sustain interactions. The probability that a given electron will collide with a neutral is given by *@17-collision-probability*.

$
  Pr = 1 - e^((-x)/(lambda)) = 1 - e^(-n_0 sigma x)
$<17-collision-probability>

Where:

- *$Pr$*: The probability of an electron colliding with a neutral.
- *$x$*: Length of the interaction region near the wall ($m$).
- *$lambda$*: Mean free path ($m$).
- *$n_0$*: The density of the neutrals ($k g "/" m^3$)
- *$sigma$*: Neutral cross sectional area ($m^2$)

Note that the mean free path is the distance an electron travels before it interacts with a neutral and is equal to $lambda = 1 "/" n_0 sigma$. An expression for the pressure can be extracted by rearranging this expression for density and then utilizing the ideal gas law, this is shown in *@17-minimum-pressure*.

$
  Pr = 1 - e^(-n_0 sigma x) quad P = n k T quad --> quad P_("min") = - (k T)/(sigma x) ln(1 - Pr)
$<17-minimum-pressure>

Where $n$ is the number of particles per unit volume, $T$ is teh temperature in kelvin and $k$ is Boltzmann's constant. An example plot with $x = 5 c m$ and Xenon as the propellent is shown in *@17-collision-probability-plot*.

#figure(
  image("images/17-collision-probability.png", width: 60%),
  caption: [Plot of electron collision probability against pressure.],
  supplement: [Figure],
  kind: figure,
)<17-collision-probability-plot>

#pagebreak()
