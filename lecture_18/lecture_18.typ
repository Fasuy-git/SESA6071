#import "../template.typ": *

= Lecture 18

== Space Charge Limitations

The main limitation on GITs (aside from the low mass flow rate of ions) is the space charge limitation. This is explained below:

- As more and more positive ions flow through through the screen grid, the gap between the screen grid and the accelerator grid starts to develop a positive charge

- When this reaches a maximum, the positive ions will occlude the effect of the accelerator grid.

- This chokes the thruster as new ions no longer see the voltage difference between the screen and accelerator grids.

To calculate the current density in a space charge limited scenario the Child-Langmuir Law can be used, shown in *@18-child*.

$
  J_i = (4 epsilon_0)/(9) ((2 e)/(M))^(1/2) (V^(3/2))/(d^2)
$<18-child>

Where:

- *$J_i$*: The current density ($A"/"m^2$)
- *$epsilon_0$*: Permittivity of free space = 8.85418782 $times 10^(-12) m^(-3) k g^(-1) s^4 A^2$
- *$e$*: Charge of an electron = $1.60217663 times 10^(-19) C$
- *$M$*: Mass of an ion ($k g$)
- *$V$*: Voltage between the screen and the accelerator plate ($V$).
- *$d$*:Distance between the screen and the accelerator plate ($m$).

Note that the area referenced in $J_i$ is roughly the area of one hole in the screen grid. The voltage distribution between grids for a free space limited case is shown in *@18-space-charge-voltage*.

#figure(
  image("images/18-space-charge-voltage.png", width: 70%),
  caption: [Plot of voltage over distance for space charge limited case.],
  supplement: [Figure],
  kind: figure,
)<18-space-charge-voltage>

== Grid Erosion and Charge Exchange Ions

Ideally a GIT will ionize all of the neutral propellent atoms within the discharge chamber, however some neutrals will pass through into the grids as well as into the plume. When this happens a charge exchange ion (CEX ion) will be created, this process is detailed below:

- Neutral passes into the gap between screen and accelerator grid or into the plume.

- The neutral then collides with a fast moving positive ion.

- In the collision the neutral ion donates an electron to the positive ion neutralizing it and it itself becomes a low energy positive ion (CEX ion).

- As it has low energy and almost no momentum, it is immediately attracted to the negative accelerator plate where it hits and erodes it.

There are two types of erosion that occur due to CEX ions, this is *barrel erosion* and *pits and grooves erosion*. These two types of erosion are explained below as well as shown in *@18-git-erosion*.

#figure(
  image("images/18-git-erosion.png", width: 90%),
  caption: [Image of barrel and pit and groove erosion.],
  supplement: [Figure],
  kind: figure,
)<18-git-erosion>

- *Barrel Erosion*: Occurs when CEX are created between the screen and accelerator grids. CEXs collide with the inner orifice of the accelerator grid widening it overtime.
  - *Fix*: Ensure that the discharge chamber is ran at a pressure where all neutrals are eliminated.

- *Pit and Groove Erosion*: Occurs when CEX are created far beyond the engine in the plume. CEXs then collide with a high kinetic energy into the accelerator grid creating a complex erosion pattern.
  - *Fix*: Use a decelerator grid in order to ensure CEXs are not accelerated towards the accelerator plate.

== Closing Remarks on GITs

Although they were the first EP method used in space their modern day use is diminishing as more missions and spacecraft opt for HETs. Their added mechanical and electrical complexity outweigh the $I_(s p)$ gains on top of their thrust being half of that of a HET.

== Heated Filament

Before hollow cathodes were used as an electron source, a heated filament was the go to option. It consists of an exposed wire which emits electrons through *thermionic emission*. The filament was typically made from thoriated tungsten which had a low work function and so could emit many electrons. The main issue with heated filaments were:

- Needed high temperatures ($approx 2600K$) to release enough electrons.
- Filament would quickly erode through bombardment meaning the lifetime was very short.

== Hollow Cathodes

Hollow cathodes are the go to option to create a stream of electrons. An image showing the anatomy of a hollow cathode is shown in *@18-hollow-cathode*.

#figure(
  image("images/18-hollow-cathode.png", width: 52%),
  caption: [Schematic image of a hollow cathode.],
  supplement: [Figure],
  kind: figure,
)<18-hollow-cathode>

A hollow cathode consist of:
- An *insert material* with a very low work function (tungsten, barium oxide, lanthanum hexaboride)
- A *hollow cathode tube* which is a cylindrical metal cavity with a small orifice at the end.
- A *resistive heater* that is wrapped around the cathode.
- A *keeper electrode*.
- A *gas feed* (typically 1-10% of total thruster flow).

To start up and use a hollow cathode the following is done:

+ Warm up the insert using the heater to initiate thermionic emission.
+ This can only release so many electrons as eventually negative charge density prevents further electron emission.
+ Start flowing gas over the hot insert which drives up the pressure in the cathode as the orifice is small.
+ The keeper electrode is positively charged which attracts electrons out of the hollow cathode.
+ Electrons collide with gas atoms forming a plasma. The plasma is quasineutral meaning no more occlusion on the surface of the insert and more electron emission.
+ One a dense plasma forms the heater can be turned off as ion bombardment heats the insert sustaining emission.
+ Ions mostly remain within the plasma and electrons are still attracted out of the orifice (no longer due to positive keeper electrode but due to positive plume).

The number of electrons emitted via thermionic emission off of a surface is given by the Richardson-Dushman equation shown in *@18-richardson-dushman*.

$
  J = A T^2 e^((-e phi.alt)/(k T))
$<18-richardson-dushman>

Where:

- *$J$*: Beam current density ($A "/" c m^2$)
- *$A$*: Empirical constant $approx 120 A "/" c m^2 K$
- *$T$*: Temperature $K$
- *$e$*: Elementary charge = $1.60217663 times 10^(-19) C$
- *$phi.alt$*: Work function $e V$
- *$k$*: Boltzmann's constant $approx 1.38 times 10^(-23) J"/"K$

In reality the work function itself is effected by temperature, this relationship is given by the equation shown in *@18-work-function*.

$
  phi.alt = phi.alt_0 + alpha T
$<18-work-function>

Where:

- *$phi.alt$*: Temperature corrected work function $e V$
- *$phi.alt_0$*: Normal work function $e V$
- *$alpha$*: Experimental material constant $e V"/"K$
- *$T$*: Temperature $K$

*@18-work-function* can be substituted into *@18-richardson-dushman* to yield a temperature corrected form of the Richardson-Dushman equation shown in *@18-richardson-dushman-temp-corrected*

$
  J = D T^2 e^((-e phi.alt_0)/(k T)) quad D = A e^((-e alpha)/(k k))
$<18-richardson-dushman-temp-corrected>

Where $D$ is the material specific modification term to the Richardson-Dushman equation. Some common hollow cathode insert materials are shown in *@18-hollow-cathode-materials* and a plot of their performance is shown in *@18-hollow-cathode-materials-plot*.

#grid(
  columns: 2,
  column-gutter: 1cm,
  [#figure(
    table(
      columns: 3,
      fill: (col, row) => if row == 0 { gray } else { white },
      align: center + horizon,
      table.header[*Material*][*D [$A"/"c m^2 K$]*][*$phi.alt$ [eV]*],

      [Barium oxide + tungsten matrix], [1.5], [1.56],
      [Lanthanum hexaboride], [29 - 110], [2.8],
      [Molybdenum], [55], [4.2],
      [Tantalum], [37], [4.1],
      [Tungsten], [70], [4.55],
    ),
    caption: [PPT performance.],
  )<18-hollow-cathode-materials>],
  [#figure(
    image("images/18-R-D-eq.png", width: 100%),
    caption: [Work function vs temp for different hollow cathode insert materials.],
    supplement: [Figure],
    kind: figure,
  )<18-hollow-cathode-materials-plot>],
)

#pagebreak()

Hollow cathodes do have some key drawbacks, these are mainly:

- They are difficult to initially start up.
- Insert is sensitive and can get contaminated.
- Insert can overheat.
- The tip of the keeper can erode due to constant bombardment.
- Difficult to scale down to smaller sizes.

== Alternative Electron Sources

One alternative for very small thrusters is a *field emission cathode*. This method emits electrons from a solid surface via quantum tunneling driven by an extremely strong electric field at a sharp emitter tip (tip material can be carbon nanotubes).

Another option that has been tested is by using a small gridded ion thruster which has an inverted polarity so that electrons are removed not ions and this stream is directed into teh plume.

#pagebreak()
