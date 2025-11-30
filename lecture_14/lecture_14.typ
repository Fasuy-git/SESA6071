#import "../template.typ": *

= Lecture 14

== Charged Particle Motion in Magnetic Fields

A charged particle subjected to a constant magnetic field will undergo circular motion, this is because the force on teh charged particle will be centripetal towards the center of rotation (called the *guiding centre*). The force on a charged particle is given by the Lorenz force shown in *@14-magnetic-lorenz-force*.

$
  accent(F, ->) = q accent(v, ->) times accent(B, ->)
$<14-magnetic-lorenz-force>

Where:

- *$accent(F, ->)$*: Force vector ($N$)
- *$q$*: Magnitude of charge of the particle ($C$)
- *$accent(v, ->)$*: velocity vector ($m"/"s$)
- *$accent(B, ->)$*: Force vector ($T$)

The angular velocity at which the charged particle rotates with is given by the *cyclotron frequency* and is shown in *@14-cyclotron-frequency*.

$
  omega_c = (q accent(B, ->))/m
$<14-cyclotron-frequency>

Where:
- *$omega_c$*: Cyclotron frequency ($"rad/"s$)
- *$m$*: Particle mass ($k g$)

The radius of the circle that the charged particle rotates through is called the *Larmor radius* and is shown in *@14-larmor-radius*.

$
  r_L = v_perp / omega_c = (m v_perp)/(q accent(B, ->))
$<14-larmor-radius>

Where:
- *$r_L$*: Larmor radius ($m$)
- *$v_perp$*: Perpendicular velocity ($m"/"s$)

== Charged Particle Motion in Electric Fields

A charge particle within an electric field will experience a constant force given a uniform electric field strength. The force on a charged particle in an electric field is given by the Lorenz force shown in *@14-Electric-lorenz-force*.

$
  accent(F, ->) = accent(E, ->)q
$<14-Electric-lorenz-force>

Where *$accent(E, ->)$* is the electric field strength with units $N"/"C$.

== Charged Particle Motion in Magnetic and Electric Fields

In a space where there is an electric field and a magnetic field perpendicular rto one another, a charged particle that enters that field will travel in a spiral pattern, this is show in *@14-particle-drift*.

#figure(
  image("images/14-particle-mag-elec.png", width: 70%),
  caption: [Path taken by an ion and electron in a magnetic and electric field. ],
  supplement: [Figure],
  kind: figure,
)<14-particle-drift>

Note that in *@14-particle-drift*, regardless of the polarity of the magnet or direction of the electric field, an electron and positive ion will drift in the same direction, the only difference would be how tight their radii were. Note that the direction of the drift is obtained by $accent(E, ->) times accent(B, ->)$. Note that this motion is similar to a charged particle in a varying magnetic field, shown in *@14-drift-non-const-mag*.

#figure(
  image("images/14-particle-varying-mag.png", width: 70%),
  caption: [Path taken by an ion and electron in a non-constant magnetic.],
  supplement: [Figure],
  kind: figure,
)<14-drift-non-const-mag>

Note that in *@14-drift-non-const-mag*, whether the particle is an ion or electron dictates the direction it will drift in.

#pagebreak()

== Magnetic Mirroring

Consider a charged particle moving in a spiral along a magnetic field line. If the magnetic field density increases, then the particle will start to spiral faster ($v_perp\u{2191}$) and the Larmor radius will tighten, this is show in *@14-magnetic-mirror*.

#figure(
  image("images/14-magnetic-mirror.png", width: 30%),
  caption: [Magnetic mirroring.],
  supplement: [Figure],
  kind: figure,
)<14-magnetic-mirror>

As the perpendicular speed increases, there must be a decrease in the parallel speed to conserve energy, this means that eventually the parallel velocity goes to zero and inverts, causing magnetic mirroring. This can also be seen in the magnetic moment of a gyrating particle equation shown in *@14-magnetic-moment*.

$
  mu = (1"/"2 m v_perp^2)/B = c o n s t
$<14-magnetic-moment>

As $mu$ must remain constant and $B$ increases, $v_perp$ decreases in proportion, increasing the speed at which the particle rotates.

== Working Principle Behind Hall Effect Thrusters

Hall Effect Thrusters (HETs) utilize many of the physical concepts mentioned previously to ionize and accelerate a gas. An image showing the major components of a HET is shown in *@14-basic-het*.

#figure(
  image("images/14-HET-basic.png", width: 40%),
  caption: [Basic componenets of a Hall Effect thruster.],
  supplement: [Figure],
  kind: figure,
)<14-basic-het>

To better understand the working principle behind a HET, we will consider the lifecycle of an electron, this is shown below:

+ Electrons are produced in the hollow cathode (some of the produced electrons ionize the ionized plasma jet).
+ Electrons are attracted towards the anode at the bottom of the annular channel.
+ Electrons see a strong magnetic force at the mouth of the annular channel where they start to rapidly spiral around (this creates a strong negative charge at the mouth accelerating ions).
+ The electrons are still attracted to teh positive anode and very slowly drift down to the anode.
+ Closer to the anode, neutrals are ionized, producing ions which are accelerated out.
+ Electrons collide with the anode completing the circuit.

In reality the movement of electrons is more complex with wall collisions and magnetic mirroring occurring. Furthermore, it is still not understood why electrons eventually break away from the magnetic confinement area. The real motion of the particles is show in *@14-real-electron*. Also shown is a plot of electric field strength and magnetic field strength, it can be sean that at the mouth where there is the strongest magnetic field, is where the strongest electric field is due to the magnetic confinement.

#figure(
  image("images/14-real-electron-motion.png", width: 70%),
  caption: [Simulated movement of electrons in a hall effect thruster.],
  supplement: [Figure],
  kind: figure,
)<14-real-electron>

== HET Performance and Improvement Areas

HETs sit at almost a goldilocks zone of performance, having much better performance then chemical or electrothermal thrusters whilst having higher thrust than GITs. A table comparing the performance of GITs to HETs is shown in *@14-git-het-performance*

#figure(
  table(
    columns: 5,
    fill: (col, row) => if row == 0 { gray } else { white },
    align: center + horizon,
    table.header[
      *Type*,
    ][
      *Thrust Range (mN)*
    ][
      *Isp Range (s)*
    ][
      *Thruster Efficiency*
    ][
      *Input Power Range (W)*
    ],

    [Gridded Ion Thruster], [0.1 - 300], [1500 - 5000], [60 - 80], [400 - 4300],
    [Hall Thruster], [5 - 2000], [1000 - 2000], [30 - 60], [1000 - 50,000],
  ),
  caption: [HET vs GIT performance.],
)<14-git-het-performance>

However HETs do have drawbacks when compared to other electrical thrusters, some of the main drawbacks are:

- *Large beam divergence* (30 - 40 degrees), this is caused by non-uniform electric and magnetic fields as well as the rotation that that the ions experience when in the magnetic field. This *reduces thrust*.
- *Electromagnetic interference* which is caused by plasma oscillations. This is due to the predator prey relationship between electrons, neutrons and ions.
- *Poor lifetime*, however this may be fixed through magnetic shielding.

== HET Lifetime and Magnetic Shielding

HETs struggle with performance over their lifetime due to the magnetic confinement eroding teh material near the mouth, this effect is shown in *@14-het-erosion*.

#figure(
  image("images/14-het-errosion.png", width: 40%),
  caption: [Erosion rate of HET near at the mouth.],
  supplement: [Figure],
  kind: figure,
)<14-het-erosion>

One new method of mitigating this is by using a shielded magnet, this has the effect of moving the magnetic confinement region away from the walls, decreasing the erosion rate. A figure of magnetic shielding as well as the erosion rate with and without it (red and dashed red line) are shown in *@14-het-mag-shield-erosion*.

#figure(
  image("images/14-magentic-shielding.png", width: 80%),
  caption: [Magnetic shielding implemented on a HEt with teh new and old erosion rates.],
  supplement: [Figure],
  kind: figure,
)<14-het-mag-shield-erosion>


== HET Propellants

Xenon and Krypton are mostly used as HEt propellants due to their high atomic weight and relative ease of obtaining. Various different propellants are shown in *@14-het-propellants*.

#figure(
  image("images/14-het-propellants.png", width: 90%),
  caption: [HET propellent performance],
  supplement: [Figure],
  kind: figure,
)<14-het-propellants>

#pagebreak()
