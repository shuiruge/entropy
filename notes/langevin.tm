<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Kramers-Moyal Expansion and Langevin Process><label|section:
  Kramers-Moyal Expansion and Langevin Process>

  We follow the discussion in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>, but focusing on the specific
  situation where there is extra smooth structure on <math|X>. This
  smoothness reflects on the connectivity of the alphabet <math|\<cal-X\>>,
  and on the smooth \Pspatial\Q dependence of the density function and
  transition rate. This indicates that the conclusions in section
  <reference|section: Master Equation, Detailed Balance, and Relative
  Entropy> hold in this section, but the inverse is not guaranteed.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>. In addition, we employ the
  <strong|Einstein convention>. That is, we omit the sum notation for the
  duplicated indices as long as they are \Pbalanced\Q. For example,
  <math|x<rsub|\<alpha\>> y<rsup|\<alpha\>>> represents
  <math|<big|sum><rsub|\<alpha\>>x<rsub|\<alpha\>> y<rsup|\<alpha\>>>. The
  <math|\<alpha\>> appears twice in the expression, once in subscript (the
  <math|x<rsub|\<alpha\>>>) and once in superscript (the
  <math|y<rsup|\<alpha\>>>), for which we say indices are balanced.
  Expression like <math|x<rsub|\<alpha\>> y<rsub|\<alpha\>>>, however, does
  not represent a summation over <math|\<alpha\>>, because indices are not
  balanced (both are subscript). A more complicated example is
  <math|\<partial\><rsub|\<alpha\>>A<rsup|\<alpha\>><rsub|\<beta\>>
  x<rsup|\<beta\>>>, which means <math|<big|sum><rsub|\<alpha\>><big|sum><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>A<rsup|\<alpha\>><rsub|\<beta\>>
  x<rsup|\<beta\>>>.

  <subsection|Spatial Expansion of Master Equation Gives Kramers-Moyal
  Expansion><label|section: Spatial Expansion of Master Equation Gives
  Kramers-Moyal Expansion>

  Let the alphabet <math|\<cal-X\>=\<bbb-R\><rsup|n>> for some integer
  <math|n\<geqslant\>1>, which has sufficient connectivity. In addition,
  suppose that the density function <math|p<around*|(|x,t|)>> of a
  time-dependent distribution <math|P<around*|(|t|)>> and the transition rate
  <math|r<around*|(|x,y|)>> are smooth on <math|x> and <math|y>. In this
  section, we investigate the direct results of spatial smoothness.

  Now, the master equation <reference|equation:master equation> becomes

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    r<around*|(|x,y|)> p<around*|(|y,t|)>.
  </equation*>

  The spatial smoothness indicates that we can Taylor expand the right hand
  side to arbitrary order. The quantity that is used to perform the Taylor
  expansion neither <math|x> nor <math|y> since they are equally weighted,
  but their difference, <math|\<epsilon\>\<assign\>x-y>. If we replace the
  <math|y> in the right hand side with <math|x-\<epsilon\>>, that is,
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y r<around*|(|x,y|)>
  p<around*|(|y,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>>, and
  directly Taylor expand by <math|\<epsilon\>>, then we will get the leading
  term <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x|)> p<around*|(|x,t|)>>, the result of which is unknown.
  What we have known is <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> p<around*|(|x,t|)>> which is zero because of
  the \Pnormalization\Q of transition density. So, we expect to Taylor expand
  by <math|\<epsilon\>> that which results in a leading term
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> p<around*|(|x,t|)>.> To do this, we need a
  little magic.

  First of all, we have the identity

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x,x-\<epsilon\>|)> p<around*|(|x-\<epsilon\>,t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|<around*|(|x-\<epsilon\>|)>+\<epsilon\>,x-\<epsilon\>|)>
    p<around*|(|x-\<epsilon\>,t|)>.
  </equation*>

  Next, we perform the magic. We first define
  <math|\<omega\><around*|(|x,\<epsilon\>|)>\<assign\>r<around*|(|x+\<epsilon\>,x|)>>,
  which the factor we want to obtain in the leading term. Then, the integral
  turns to be <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  \<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>
  p<around*|(|x-\<epsilon\>,t|)>>. The key is Taylor expanding by the
  <math|\<epsilon\>> <em|in the first argument> of
  <math|\<omega\><around*|(|x-\<epsilon\>,\<epsilon\>|)>> in addition to that
  in <math|p<around*|(|x-\<epsilon\>,t|)>>. So, it becomes

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>+<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)><big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|\<omega\><around*|(|x,\<epsilon\>|)> p<around*|(|x,t|)>|]>.
  </equation*>

  The leading term (the first one) vanishes, as expected. With some
  re-arrangement to the second term, and plugging it back to the right hand
  side of master equation, we find

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|p<around*|(|x,t|)> <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>|]>.
  </equation*>

  \;

  The integral <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
  \<omega\><around*|(|x,\<epsilon\>|)>> in the <math|<around*|[|\<cdots\>|]>>
  factor has an intuitive meaning. Remind of
  <math|\<omega\><around*|(|x,\<epsilon\>|)>=r<around*|(|x+\<epsilon\>,x|)>>
  and <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<delta\><around*|(|\<epsilon\>|)>+r<around*|(|x+\<epsilon\>,x|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, we have

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<Delta\>t
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  So, <math|\<Delta\>t <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
  \<omega\><around*|(|x,\<epsilon\>|)>> is recognized as an approximation of
  the <math|k>-order correlation of <math|\<epsilon\>> sampled from
  transition density <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  (regarding <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>> as an
  <math|x>-dependent distribution <math|Q<rsub|\<Delta\>t><around*|(|x|)>>
  that samples <math|\<epsilon\>>). We denote it by (<math|K> for the leading
  consonant of \Pcorrelation\Q)

  <\equation>
    K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
    \<omega\><around*|(|x,\<epsilon\>|)>.<label|equation:km correlation>
  </equation>

  Finally, we arrive at

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=1><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    <around*|[|K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>
    p<around*|(|x,t|)>|]>.<label|equation:km expansion>
  </equation>

  This Taylor expansion of master equation is called the
  <with|font-series|bold|Kramers\UMoyal expansion>.

  <subsection|From Brownian Motion to Central Limit Theorem><label|section:
  From Brownian Motion to Central Limit Theorem>

  One important application of Kramers\UMoyal expansion is Brownian motion.
  In 1827, botanist Robert Brown noticed that pollen particles automatically
  shakes in water. This phenomenon was first explained by Albert Einstein in
  1905. He argued that the pollen particles are constantly stricken by water
  molecules.

  We are to quantitatively determine how a pollen particle moves in water.
  The random movement of a pollen particle can be characterized by a
  transition density <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>,
  where the pollen particle transits from <math|x> to <math|x+\<epsilon\>>
  during time interval <math|\<Delta\>t>. For this transition density, we
  make two assumptions. The first comes from the observation that the pool
  under the microscope of Brown is much broader than the diameter of water
  molecule, and the temperature of water is uniform, so that a water molecule
  cannot distinguish where it locates, just like a boat floating on the
  ocean, because every place is the same. It indicates that the transition is
  homogeneous, namely, <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  does not depend on <math|x>. It, then, implies that the transition rate
  <math|r<around*|(|x+\<epsilon\>,x|)>> is independent of <math|x>. This
  landscape also gives the other assumption that every direction is the same
  too: the transition is also isotropic. It indicates that
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
  \<epsilon\><rsup|\<alpha\>>=0> for each <math|\<alpha\>>, since the water
  molecule cannot distinguish the direction
  <math|-\<epsilon\><rsup|\<alpha\>>> from
  <math|\<epsilon\><rsup|\<alpha\>>>. With these two assumptions, the
  Kramers\UMoyal expansion <reference|equation:km expansion> becomes

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<big|sum><rsub|k=2><rsup|+\<infty\>><frac|<around*|(|-1|)><rsup|k>|k!>
    K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>>
    <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|1>>>\<cdots\><frac|\<partial\>|\<partial\>x<rsup|\<alpha\><rsub|k>>>|)>
    p<around*|(|x,t|)>,
  </equation*>

  where the <math|k> starts at <math|2> (since the assumption
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
  \<epsilon\><rsup|\<alpha\>>=0> implies <math|K<rsup|\<alpha\>><around*|(|x|)>=0>)
  and the <math|K<rsup|\<alpha\><rsup|1>\<cdots\>\<alpha\><rsup|k>><around*|(|x|)>\<assign\><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\><rsub|1>>\<cdots\>\<epsilon\><rsup|\<alpha\><rsub|k>>|)>
  r<around*|(|x+\<epsilon\>\|x|)>> is constant now (because the
  <math|r<around*|(|x+\<epsilon\>,x|)>> is independent of <math|x>).

  Now, we are to examine the <math|K> carefully. It is determined by
  transition rate, that is, by the transition where <math|\<mathLaplace\>t>
  is infinitesimal (at least sufficiently small). In this situation, there
  will be at most one water molecule that strikes the pollen particle, so
  that the typical scale of <math|\<epsilon\>> is extremely tiny (much
  smaller than the capacity of Brown's microscope). So, we have
  <math|K<rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>>\<gg\>K<rsup|\<alpha\><rsub|1>\<cdots\>\<alpha\><rsub|k>
  \<alpha\><rsub|k+1>>> for any <math|k\<geqslant\>2> since the later
  contains more <math|\<epsilon\>> (<math|k=1> is not so because
  <math|K<rsup|\<alpha\>>=0>). This leads to a valid approximation

  <\equation*>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=<frac|1|2>
    K<rsup|\<alpha\>\<beta\>> <around*|(|<frac|\<partial\>|\<partial\>x<rsup|\<alpha\>>><frac|\<partial\>|\<partial\>x<rsup|\<beta\>>>|)>
    p<around*|(|x,t|)>,
  </equation*>

  where only the leading term <math|k=2> remains. This equation is the famous
  heat equation, first developed by French mathematician Joseph Fourier in
  1822. For initial value <math|p<around*|(|x,0|)>>, it has the solution

  <\equation*>
    p<around*|(|x,t|)>=<frac|1|<sqrt|<around*|(|2\<mathpi\>t|)><rsup|n>
    det<around*|(|K|)>>><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    exp<around*|(|-<frac|1|2t><around*|(|K<rsup|-1>|)><rsub|\<alpha\>\<beta\>>
    <around*|(|x<rsup|\<alpha\>>-y<rsup|\<alpha\>>|)>
    <around*|(|x<rsup|\<beta\>>-y<rsup|\<beta\>>|)>|)> p<around*|(|y,0|)>,
  </equation*>

  where the factor <math|1/<sqrt|\<cdots\>>> comes from normalization
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x p<around*|(|x,t|)>=1>.
  Recall the (discrete time) master equation <reference|equation:discrete
  time master equation>, <math|p<around*|(|x,\<Delta\>t|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
  q<rsub|\<Delta\>t><around*|(|x\|y|)> p<around*|(|y,0|)>>. The transition
  rate of pollen particle can be readily read out as

  <\equation>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=<frac|1|<sqrt|<around*|(|2\<mathpi\>
    \<Delta\>t|)><rsup|n> det<around*|(|K|)>>>
    exp<around*|(|-<frac|1|2\<Delta\>t><around*|(|K<rsup|-1>|)><rsub|\<alpha\>\<beta\>>
    \<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>|)>.<label|equation:wiener
    process>
  </equation>

  The phenomenon that this transition density describes is called
  <strong|Brownian motion>. Even though the techniques used for deriving this
  transition density had been mature when Brown first observed this
  phenomenon, but almost one hundred years after Brown's discover, in 1918,
  Norbert Wiener first constructed a complete mathematical theory for this
  stochastic process. So, it is also called <strong|Wiener process>.

  The transition rate <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>>
  can be seen as an accumulation of a series tiny transitions, each is caused
  by one strike from a water molecule. The strike obeys a distribution which
  is identical (each water molecule behaves in the same way, as a result of
  homogeneity) and independent (since each strike is individual) with zero
  mean (as a result of isotropy). This distribution, however, is unknown.
  Although, we find that the accumulative effect always obeys a normal
  distribution. We can abstract this and conclude a corollary as follow.

  <\corollary>
    For any independently identically distributed <math|n>-dimensional random
    variables <math|<around*|(|X<rsub|1>,\<ldots\>,X<rsub|N>|)>> with zero
    mean (thus each <math|X<rsub|i>> is one strike), the accumulation
    <math|Y\<assign\>X<rsub|1>+\<cdots\>+X<rsub|N>> tends to obey a normal
    distribution as <math|N> is large enough.
  </corollary>

  Each <math|X<rsub|i>> can be seen as a strike by water molecule. Further,
  the mean of <math|Y> can be calculated by the linearity of expectation, as
  <math|\<bbb-E\><around*|[|Y|]>=\<bbb-E\><around*|[|X<rsub|1>|]>+\<cdots\>+\<bbb-E\><around*|[|X<rsub|N>|]>=0>.
  And because of independency, we have <math|\<bbb-E\><around*|[|Y<rsup|\<alpha\>>
  Y<rsup|\<beta\>>|]>=\<bbb-E\><around*|[|X<rsub|1><rsup|\<alpha\>>
  X<rsub|1><rsup|\<beta\>>|]>+\<cdots\>+\<bbb-E\><around*|[|X<rsub|N><rsup|\<alpha\>>
  X<rsub|N><rsup|\<beta\>>|]>>. Let <math|\<Sigma\><rsup|\<alpha\>\<beta\>>\<assign\>\<bbb-E\><around*|[|X<rsub|i><rsup|\<alpha\>>
  X<rsup|\<beta\>><rsub|i>|]>>, which is the same for all <math|i> because
  <math|X<rsub|i>>s are identical, we find
  <math|\<bbb-E\><around*|[|Y<rsup|\<alpha\>> Y<rsup|\<beta\>>|]>=N
  \<Sigma\><rsup|\<alpha\>\<beta\>>>. This is the <strong|central limit
  theorem>, the most famous theorem in probability theory. Now, we have found
  for central limit theorem a physical description, the Brownian motion, and
  found it as a corollary of Kramers\UMoyal expansion.

  <subsection|Langevin Process Arises in the Difference of
  Scales><label|section: Langevin Process Arises in the Difference of Scales>

  There are many levels of scale in Nature. From the lifetime of universe to
  the lifetime of human. From the movement of a bird to the movement of
  molecule. We are to formulate the general mathematical description for the
  system in which multiple scales are involved.

  A typical example is the Brownian motion described in section
  <reference|section: From Brownian Motion to Central Limit Theorem>. Of
  course, each water molecule moves the pollen particle in such a tiny
  distance that cannot be observed by a microscope made in the 19th century.
  What Brown noticed was not a pollen particle shaken by a single water
  molecule, but an accumulation of strikes by a large group of water
  molecules. So, this phenomenon involves two different scales: the scale of
  pollen particles, and the scale of movement of water molecules, which is
  much smaller than the frontier.

  If we replace the pollen particles by paramecia, then the scales remain. In
  the perspective of water molecule, homogeneity and isotropy still hold. So,
  the contribution from the constant striking of water molecules obeys the
  transition density of Wiener process <reference|equation:wiener process>.
  But in the perspective of paramecium, both homogeneity and isotropy break.
  Unlike pollen particle, a paramecium can swim along a direction (maybe,
  there is food on this direction), thus isotropy breaks. In the perspective
  of the paramecium, which is much larger than a water molecule, the pool is
  not like an ocean anymore, but a pond. So, after arriving at another place
  in the pool, it can feel the change of environment (such as the temperature
  of water), thus homogeneity breaks.

  This pattern arises in many areas of Nature in which two scales coexist
  simultaneously: one scale is smaller, being homogeneous and isotropic,
  while the other is greater, breaking homogeneity and isotropy. The greater
  scale obeys a deterministic behavior, characterized by a dynamical system
  <math|\<mathd\>x<rsup|\<alpha\>>/\<mathd\>t=f<rsup|\<alpha\>><around*|(|x|)>>,
  or difference equation <math|x<rsup|\<alpha\>><rsub|i+1>=x<rsup|\<alpha\>><rsub|i>+f<rsup|\<alpha\>><around*|(|x<rsub|i>|)>
  \<Delta\>t> for some small but still finite time interval <math|\<Delta\>t>
  (the subscripts denote the iterative steps). While the smaller scale
  contributes to the movement of the greater one by the accumulative random
  effect <math|\<Delta\>W<rsub|i><rsup|\<alpha\>>>, which is proven to obey a
  normal distribution with zero mean and covariance
  <math|K<rsup|\<alpha\>\<beta\>><around*|(|x<rsub|i>|)> \<Delta\>t> (proved
  in section <reference|section: From Brownian Motion to Central Limit
  Theorem>). Notice that, since the homogeneity has broken at the greater
  scale, <math|K<rsup|\<alpha\>\<beta\>>> will explicitly depends on position
  <math|x>. So, the total effect is

  <\equation>
    x<rsup|\<alpha\>><rsub|i+1>=x<rsup|\<alpha\>><rsub|i>+f<rsup|\<alpha\>><around*|(|x<rsub|i>|)>
    \<Delta\>t+\<Delta\>w<rsub|i><rsup|\<alpha\>>,<label|equation:langevin
    process v0>
  </equation>

  where <math|\<Delta\>w<rsub|i>> is sampled from the distribution of
  <math|\<Delta\>W<rsub|i>>.

  We are to determine the conditional probability of <math|x<rsub|i+1>> given
  <math|x<rsub|i>>, where the randomness of <math|x<rsub|i+1>> comes from
  that of <math|\<Delta\>W<rsub|i>>. We know that a linear combination of
  random variables that obey normal distribution also obeys a normal
  distribution. Then, since <math|x<rsub|i+1>> is linear with
  <math|\<Delta\>w<rsub|i>>, we have <math|X<rsub|i+1>> (the random version
  of <math|x<rsub|i+1>>) will also obey a normal distribution when
  <math|x<rsub|i>> is fixed, with the conditional density function on
  <math|\<bbb-R\><rsup|n>>

  <\small>
    <\equation>
      q<rsub|\<Delta\>t><around*|(|x<rsub|i+1>\|x<rsub|i>|)>\<assign\><frac|1|<sqrt|<around*|(|2\<mathpi\>
      \<Delta\>t|)><rsup|n> det K<around*|(|x<rsub|i>|)>>>exp<around*|(|-<frac|1|2\<Delta\>t>
      <around*|[|K<rsup|-1><around*|(|x<rsub|i>|)>|]><rsub|\<alpha\>\<beta\>>
      <around*|[|x<rsup|\<alpha\>><rsub|i+1>-x<rsup|\<alpha\>><rsub|i>-f<rsup|\<alpha\>><around*|(|x<rsub|i>|)>
      \<Delta\>t|]> <around*|[|x<rsup|\<beta\>><rsub|i+1>-x<rsup|\<beta\>><rsub|i>-f<rsup|\<beta\>><around*|(|x<rsub|i>|)>
      \<Delta\>t|]>|)>.<label|equation:langevin process>
    </equation>
  </small>

  When <math|\<Delta\>t> is sufficiently small, <math|q<rsub|\<Delta\>t>> can
  be approximately regarded as a transition density (the essential and
  sufficient condition for <math|q<rsub|\<Delta\>t>> to be a transition
  density was discussed in section <reference|section: Transition Rate
  Determines Transition Density>).<\footnote>
    Is <math|q<rsub|\<Delta\>t>> a transition density? In section
    <reference|Transition Rate Determines Transition Density>, we have shown
    that <math|q<rsub|\<Delta\>t>> is a transition density if and only if
    <math|q<rsub|\<Delta\>t+\<Delta\>t<rprime|'>><around*|(|x\|z|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>y
    q<rsub|\<Delta\>t<rprime|'>><around*|(|x\|y|)>
    q<rsub|\<Delta\>t><around*|(|y\|z|)>>. By inserting the
    <math|q<rsub|\<Delta\>t>> of Langevin process, we find the integrand in
    the right hand side proportional to

    <\equation*>
      \ q<rsub|\<Delta\>t<rprime|'>><around*|(|x\|y|)>=<frac|1|<sqrt|<around*|(|2\<mathpi\>
      \<Delta\>t<rprime|'>|)><rsup|n> det
      K<around*|(|y|)>>>exp<around*|(|-<frac|1|2\<Delta\>t<rprime|'>>
      K<rsup|-1><around*|(|y|)> <around*|(|x-y-f<around*|(|y|)>
      \<Delta\>t<rprime|'>|)> <around*|(|x-y-f<around*|(|y|)>
      \<Delta\>t<rprime|'>|)>|)>,
    </equation*>

    in which <math|y> appears in many places, including <math|det
    K<around*|(|y|)>>, <math|K<rsup|-1><around*|(|y|)>>, and
    <math|f<around*|(|y|)>>. Thus, that in the exponential is not quadratic
    on <math|y>. It is hard to expect that integrating over <math|y> will
    give a result that is proportional to

    <\equation*>
      exp<around*|(|-<frac|1|2<around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>>
      K<rsup|-1><around*|(|z|)> <around*|[|x-z-f<around*|(|z|)>
      <around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>|]>
      <around*|[|x-z-f<around*|(|z|)> <around*|(|\<Delta\>t+\<Delta\>t<rprime|'>|)>|]>|)>.
    </equation*>

    So, an educated guess is that <math|q<rsub|\<Delta\>t>> is not a
    transition density, but just an approximation of some transition density
    when <math|\<Delta\>t> is sufficiently small. Remark that, when
    <math|f=0> and <math|K> is constant, it is straight-forward to show that
    <math|q<rsub|\<Delta\>t>> is indeed a transition density.
  </footnote> The corresponding Markov process is called <strong|Langevin
  dynamics> or <with|font-series|bold|Langevin process>. In many textures, it
  is written in

  <\equation*>
    \<mathd\>X<rsup|\<alpha\>>=f<rsup|\<alpha\>><around*|(|X|)>
    \<mathd\>t+\<mathd\>W<rsup|\<alpha\>>,
  </equation*>

  which is a formal re-formulation of equation <reference|equation:langevin
  process v0>.

  <subsection|Transition Rate of Langevin Process Is a Generalized
  Function><label|section: Transition Rate of Langevin Process Is a
  Generalized Function>

  In this section, we calculate the the transition rate of Langevin process
  from transition density. The <math|\<Delta\>t> appears in many places in
  transition density, and directly Taylor expanding <math|q<rsub|\<Delta\>t>>
  by <math|\<Delta\>t> is very hard. Instead, we employ an arbitrary test
  function <math|\<varphi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> in
  <strong|Schwarts space>, which is a functional space in which function is
  smooth and rapidly falls to zero in the region far from origin. For
  example, Gaussian function (the density function of normal distribution) is
  in Schwarts space <math|S<around*|(|\<bbb-R\>,\<bbb-R\>|)>> (the first
  <math|\<bbb-R\>> represents for domain and the second for codomain). Then,
  we Taylor expand <math|f> by its variable

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<varphi\><around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)><around*|[|
    \<varphi\><around*|(|0|)>+\<epsilon\><rsup|\<alpha\>>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<frac|1|2>\<epsilon\><rsup|\<alpha\>>
    \<epsilon\><rsup|\<beta\>> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>+\<cdots\>|]>
  </equation*>

  These Gaussian integrals result in

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<epsilon\><rsup|\<alpha\>>=f<rsup|\<alpha\>><around*|(|x|)> \<Delta\>t
  </equation*>

  and (recall the relation between covariance and mean,
  <math|Cov<around*|(|X,Y|)>=\<bbb-E\><around*|[|X
  Y|]>-\<bbb-E\><around*|[|X|]> \<bbb-E\><around*|[|Y|]>>)

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>=K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<Delta\>t+f<rsup|\<alpha\>><around*|(|x|)>
    f<rsup|\<beta\>><around*|(|x|)> \<Delta\>t<rsup|2>=K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  Altogether,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<varphi\><around*|(|\<epsilon\>|)>=\<varphi\><around*|(|0|)>+\<Delta\>t<around*|[|
    f<rsup|\<alpha\>><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>|]>+\<omicron\><around*|(|\<Delta\>t|)>,
  </equation*>

  as <math|\<Delta\>t\<rightarrow\>0> (for example,
  <math|><math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)><around*|[|
  \<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>> \<epsilon\><rsup|\<delta\>>
  \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<gamma\>>\<partial\><rsub|\<delta\>>\<varphi\><around*|(|0|)>|]>=<with|font|cal|O><around*|(|\<Delta\>t<rsup|2>|)>=\<omicron\><around*|(|\<Delta\>t|)>>).
  On the other hand, if we Taylor expand <math|q<rsub|\<Delta\>t>> by
  <math|\<Delta\>t> as <math|q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<delta\><around*|(|\<epsilon\>|)>+r<around*|(|x+\<epsilon\>,x|)>
  \<Delta\>t+\<omicron\><around*|(|\<Delta\>t|)>>, where <math|r> is the
  transition rate, then we will get

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>
    \<varphi\><around*|(|\<epsilon\>|)>=\<varphi\><around*|(|0|)>+\<Delta\>t<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<varphi\><around*|(|\<epsilon\>|)>+\<omicron\><around*|(|\<Delta\>t|)>.
  </equation*>

  From the terms proportional to <math|\<Delta\>t>, we recognize

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<varphi\><around*|(|\<epsilon\>|)>=f<rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>.
  </equation*>

  Noticing the integration by parts<\footnote>
    High-dimensional integration by parts employs Stokes theorem. Consider
    the integral <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
    v<rsup|\<alpha\>><around*|(|x|)>> with smooth scalar function
    <math|\<varphi\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>> and vector
    field <math|v:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>. We have
    identity

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>><around*|[|\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>|]>-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<varphi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>v<rsup|\<alpha\>><around*|(|x|)>.
    </equation*>

    The first integrand in the right hand side is a divergence. Using Stokes
    theorem, it becomes

    <\equation*>
      <big|int><rsub|\<partial\>\<bbb-R\><rsup|n>>\<mathd\>S<rsub|\<alpha\>>
      <around*|[|\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>|]>,
    </equation*>

    where <math|\<partial\>\<bbb-R\><rsup|n>> is the \Pboundary\Q of
    <math|\<bbb-R\><rsup|n>>. If <math|\<varphi\>> or <math|v> is in Schwarts
    space, then this term vanishes, and the integral results in

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>
      v<rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<varphi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>v<rsup|\<alpha\>><around*|(|x|)>.
    </equation*>
  </footnote>

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    f<rsup|\<alpha\>><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    \<varphi\><around*|(|\<epsilon\>|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    f<rsup|\<alpha\>><around*|(|x|)> \<delta\><around*|(|\<epsilon\>|)>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|\<epsilon\>|)>=-f<rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>,
  </equation*>

  and

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
    \<varphi\><around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<delta\><around*|(|\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|\<epsilon\>|)>=K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>,
  </equation*>

  we get

  <\equation>
    r<around*|(|x+\<epsilon\>,x|)>=-f<rsup|\<alpha\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>.<label|equation:Langevin
    transition rate>
  </equation>

  Because of the Dirac's <math|\<delta\>>-functions, this transition rate is
  a generalized function. That is, only when applied to a test function can
  they be evaluated.

  For example, to evaluate <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>>,
  we have to employ an arbitrary test function
  <math|\<varphi\>\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>>,
  and calculate <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>>. First, notice that
  <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>> is in fact
  <math|<around*|(|\<partial\><rsub|\<alpha\>>\<delta\>|)><around*|(|-x|)>>
  and that <math|<around*|(|\<partial\>\<delta\>/\<partial\>x<rsup|\<alpha\>>|)><around*|(|-x|)>=-<around*|(|\<partial\>/\<partial\>x<rsup|\<alpha\>>|)>\<delta\><around*|(|-x|)>>,
  thus

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
    \<varphi\><rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    <around*|(|\<partial\><rsub|\<alpha\>>\<delta\>|)><around*|(|-x|)>
    \<varphi\><rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>><around*|[|\<delta\><around*|(|-x|)>|]>
    \<varphi\><rsup|\<alpha\>><around*|(|x|)>.
  </equation*>

  Then, integration by parts gives <math|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>><around*|[|\<delta\><around*|(|-x|)>|]>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<delta\><around*|(|-x|)> \<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><around*|(|x|)>>.
  After inserting the relation <math|\<delta\><around*|(|x|)>=\<delta\><around*|(|-x|)>>,
  we arrive at <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><around*|(|0|)>>.
  On the other hand, we have, by integration by parts,
  <math|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<delta\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<varphi\><rsup|\<alpha\>><around*|(|0|)>>.
  Altogether, we find <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
  \<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>
  \<varphi\><rsup|\<alpha\>><around*|(|x|)>>, for any
  <math|\<varphi\>\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n>|)>>.
  Thus, <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>> is
  evaluated to be <math|-\<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>>.
  That is, <em|<math|\<partial\><rsub|\<alpha\>>\<delta\>> is odd>. Following
  the same process, we can show that <em|<math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>>
  is even>.<\footnote>
    We are to calculate <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
    f<rsup|\<alpha\>\<beta\>><around*|(|x|)>>, where
    <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n\<times\>n>|)>>.
    Again, noticing that <math|<around*|(|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>|)><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>>,
    we have

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      <around*|(|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\>|)><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>.
    </equation*>

    Then integration by parts gives

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|\<delta\><around*|(|-x|)>|]>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<delta\><around*|(|-x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>.
    </equation*>

    That is, <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
    f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>>.
    On the other hand, we have

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<delta\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>f<rsup|\<alpha\>\<beta\>><around*|(|0|)>.
    </equation*>

    So,

    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>x
      \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>
      f<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    </equation*>

    holds for any <math|f\<in\>S<around*|(|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|n\<times\>n>|)>>,
    thus <math|><math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>>.
  </footnote> These conclusions are to be used in section <reference|section:
  Detailed Balance Condition of Langevin Process Lacks Source-Free Degree of
  Freedom>.

  <subsection|Master Equation of Langevin Process Is Fokker-Planck Equation>

  After discussing transition rate, we turn to the master equation of
  Langevin process. Since Langevin process applies to continuous random
  variable, we can use Kramers-Moyal expansion to evaluate its master
  equation. Directly, we have <math|K<rsup|\<alpha\>><around*|(|x|)>=f<rsup|\<alpha\>><around*|(|x|)>>,
  and those with order (the number of superscripts) higher than
  <math|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>> are all vanishing (<math|K>
  is defined in section <reference|section: Spatial Expansion of Master
  Equation Gives Kramers-Moyal Expansion>). For example, the integral
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>>|)> q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=<with|font|cal|O><around*|(|\<Delta\>t<rsup|3/2>|)>>,
  which can be easily realized by the estimation
  <math|\<epsilon\>=<with|font|cal|O><around*|(|<sqrt|\<Delta\>t>|)>>. By
  relation <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  <around*|(|\<epsilon\><rsup|\<alpha\>> \<epsilon\><rsup|\<beta\>>
  \<epsilon\><rsup|\<gamma\>>|)> q<rsub|\<Delta\>t><around*|(|x+\<epsilon\>\|x|)>=\<Delta\>t
  K<rsup|\<alpha\>\<beta\>\<gamma\>><around*|(|x|)>+\<omicron\><around*|(|\<Delta\>t|)>>
  (derived in section <reference|section: Spatial Expansion of Master
  Equation Gives Kramers-Moyal Expansion>), we find
  <math|K<rsup|\<alpha\>\<beta\>\<gamma\>><around*|(|x|)>=0>. Thus,
  Kramers-Moyal expansion <reference|equation:km expansion> reads

  <\equation>
    <frac|\<partial\>p|\<partial\>t><around*|(|x,t|)>=-\<partial\><rsub|\<alpha\>><around*|(|f<rsup|\<alpha\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    p<around*|(|x,t|)>|)>.<label|equation:Fokker-Planck equation>
  </equation>

  This equation is called <with|font-series|bold|Fokker-Planck equation>,
  found by Adriaan Fokker and Max Planck in 1914 and 1917 respectively, or
  <strong|Kolmogorov forward equation>, independently discovered in 1931.

  <subsection|Stationary Solution of Langevin Process Has Source-Free Degree
  of Freedom>

  The master equation of Langevin process (equation
  <reference|equation:Fokker-Planck equation>) has stationary solution
  <math|\<Pi\>> which satisfies (since there is only one variable <math|x>,
  we use <math|\<partial\>> instead of <math|\<nabla\>>)

  <\equation*>
    -\<partial\><rsub|\<alpha\>><around*|(|f<rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0,
  </equation*>

  which means

  <\equation>
    f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>=<frac|1|2>\<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+\<nu\><rsup|\<alpha\>><around*|(|x|)>,<label|equation:stationary
    Fokker-Planck equation>
  </equation>

  where <math|\<nu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> is an
  arbitrary vector field such that <math|\<partial\><rsub|\<alpha\>>\<nu\><rsup|\<alpha\>><around*|(|x|)>=0>.

  The vector field <math|\<nu\>> has an intuitive explanation. Regarding
  <math|\<nu\>> as a flux on <math|\<bbb-R\><rsup|n>>, we find that there is
  not net flux flowing out of anywhere in <math|\<bbb-R\><rsup|n>>.
  Otherwise, suppose there is <math|x\<in\>\<bbb-R\><rsup|n>> and a closed
  surface <math|S> around <math|x> such that the net flux
  <math|<big|int>\<mathd\>S\<cdot\>\<nu\><around*|(|x|)>> does not vanish.
  Then, by Stokes theorem, the surface integral
  <math|<big|int>\<mathd\>S\<cdot\>\<nu\><around*|(|x|)>=<big|int>\<mathd\>x
  \<nabla\>\<cdot\>v<around*|(|x|)>=0>, thus conflicts. Such a vector field
  <math|\<nu\>> is called <strong|free of source> or <strong|source-free>.

  <subsection|Detailed Balance Condition of Langevin Process Lacks
  Source-Free Degree of Freedom><label|section: Detailed Balance Condition of
  Langevin Process Lacks Source-Free Degree of Freedom>

  After discussing stationary distribution of Fokker-Planck equation (as a
  master equation), we continue investigate when will Langevin process relax
  an initial distribution to the stationary. By theorem <reference|theorem:
  relaxation>, this is equivalent to ask: when will the transition rate of
  Langevin process satisfy detailed balance condition? Detailed balance
  condition reads <math|r<around*|(|x+\<epsilon\>,x|)>
  \<pi\><around*|(|x|)>=r<around*|(|x,x+\<epsilon\>|)>
  \<pi\><around*|(|x+\<epsilon\>|)>>. Directly inserting equation
  <reference|equation:Langevin transition rate>, we get, for the left hand
  side,

  <\equation*>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>=-f<rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>,
  </equation*>

  and, for the right hand side,

  <\align>
    <tformat|<table|<row|<cell|>|<cell|r<around*|(|x,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|r<around*|(|<around*|(|x+\<epsilon\>|)>-\<epsilon\>,x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)>>>|<row|<cell|=>|<cell|-f<rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|-\<epsilon\>|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-\<epsilon\>|)>>>|<row|<cell|=>|<cell|f<rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>,>>>>
  </align>

  where in the last line, we have used <math|\<partial\><rsub|\<alpha\>>\<delta\><around*|(|-x|)>=-\<partial\><rsub|\<alpha\>>\<delta\><around*|(|x|)>>
  and <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|-x|)>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|x|)>>
  (derived in the end of section <reference|section: Transition Rate of
  Langevin Process Is a Generalized Function>).

  As generalized functions, we are to examine these two expressions by using
  an arbitrary test function <math|\<varphi\>>. Thus, for the left hand side,

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    \<varphi\><around*|(|\<epsilon\>|)>=-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
    \<varphi\><around*|(|\<epsilon\>|)>+<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    K<rsup|\<alpha\>\<beta\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
    \<varphi\><around*|(|\<epsilon\>|)>.
  </equation*>

  Integration by parts gives (note that the <math|\<partial\>> is applied on
  <math|\<epsilon\>>)

  <\equation*>
    <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
    \<varphi\><around*|(|\<epsilon\>|)>=<with|color|dark
    cyan|f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>>.
  </equation*>

  The right hand side is a little complicated,

  <\small>
    <\equation*>
      <big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
      r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
      \<varphi\><around*|(|\<epsilon\>|)>=<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
      f<rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
      \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<delta\><around*|(|\<epsilon\>|)>
      \<varphi\><around*|(|\<epsilon\>|)>+<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
      K<rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
      \<pi\><around*|(|x+\<epsilon\>|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<delta\><around*|(|\<epsilon\>|)>
      \<varphi\><around*|(|\<epsilon\>|)>.
    </equation*>
  </small>

  Again, integration by parts results in (again, the <math|\<partial\>>
  operator is applied on <math|\<epsilon\>>)

  <\align>
    <tformat|<table|<row|<cell|>|<cell|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
    \<varphi\><around*|(|\<epsilon\>|)>>>|<row|<cell|=>|<cell|-<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>\<delta\><around*|(|\<epsilon\>|)><frac|\<partial\>|\<partial\>\<epsilon\><rsup|\<alpha\>>><around*|[|f<rsup|\<alpha\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<varphi\><around*|(|\<epsilon\>|)>|]>>>|<row|<cell|+>|<cell|<frac|1|2><big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
    \<delta\><around*|(|\<epsilon\>|)><frac|\<partial\><rsup|2>|\<partial\>\<epsilon\><rsup|\<alpha\>>\<partial\>\<epsilon\><rsup|\<beta\>>><around*|[|K<rsup|\<alpha\>\<beta\>><around*|(|x+\<epsilon\>|)>
    \<pi\><around*|(|x+\<epsilon\>|)> \<varphi\><around*|(|\<epsilon\>|)>|]>>>|<row|<cell|=>|<cell|-\<partial\><rsub|\<alpha\>><around*|[|f<rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> \<varphi\><around*|(|0|)>-<with|color|dark
    cyan|f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>
    \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>>>>|<row|<cell|+>|<cell|<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|[|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> \<varphi\><around*|(|0|)>+\<partial\><rsub|\<beta\>><around*|[|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|]> \<partial\><rsub|\<alpha\>>\<varphi\><around*|(|0|)>+<with|color|dark
    cyan|<frac|1|2>K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)> \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\><around*|(|0|)>>.>>>>
  </align>

  By equaling <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x+\<epsilon\>,x|)> \<pi\><around*|(|x|)>
  \<varphi\><around*|(|\<epsilon\>|)>> and
  <math|<big|int><rsub|\<bbb-R\><rsup|n>>\<mathd\>\<epsilon\>
  r<around*|(|x,x+\<epsilon\>|)> \<pi\><around*|(|x+\<epsilon\>|)>
  \<varphi\><around*|(|\<epsilon\>|)>>, since <math|\<varphi\>> is arbitrary,
  we find, for the <math|\<varphi\><around*|(|0|)>> terms,

  <\equation*>
    -\<partial\><rsub|\<alpha\>><around*|(|f<rsup|\<alpha\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>+<frac|1|2>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0,
  </equation*>

  and for <math|\<partial\>\<varphi\><around*|(|0|)>> terms,

  <\equation*>
    -f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>+
    <frac|1|2>\<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>=0.
  </equation*>

  The <math|\<partial\>\<partial\>\<varphi\><around*|(|0|)>> terms vanishes
  automatically. Altogether, we find the detailed balance condition for
  Langevin process to be

  <\equation>
    f<rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>=<frac|1|2>
    \<partial\><rsub|\<beta\>><around*|(|K<rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>.<label|equation:detailed balance condition for
    Langevin>
  </equation>

  Comparing with the stationary solution of Langevin process (equation
  <reference|equation:stationary Fokker-Planck equation>), the source-free
  vector field <math|\<nu\>> is absent here. Recall in section
  <reference|section: Detailed Balance Provides Stationary Distribution>
  where detailed balance condition was first encountered, we said that
  detailed balance condition is stronger than just being stationary. Now, in
  Langevin process, this becomes concrete: <em|detailed balance condition is
  stronger than stationary condition in the sense that it lacks the
  source-free degree of freedom that appears in the stationary condition>.
  The lost degree of freedom is the cost of ensuring that any initial
  distribution will finally relax to the stationary.
</body>

<\initial>
  <\collection>
    <associate|bg-color|#c7edcc>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|1.4|3>>
    <associate|auto-6|<tuple|1.5|4>>
    <associate|auto-7|<tuple|1.6|6>>
    <associate|auto-8|<tuple|1.7|6>>
    <associate|auto-9|<tuple|1.8|6>>
    <associate|equation:Fokker-Planck equation|<tuple|7|6>>
    <associate|equation:Langevin transition rate|<tuple|6|5>>
    <associate|equation:detailed balance condition for Langevin|<tuple|9|7>>
    <associate|equation:km correlation|<tuple|1|2>>
    <associate|equation:km expansion|<tuple|2|2>>
    <associate|equation:langevin process|<tuple|5|4>>
    <associate|equation:langevin process v0|<tuple|4|?>>
    <associate|equation:stationary Fokker-Planck equation|<tuple|8|6>>
    <associate|equation:wiener process|<tuple|3|2>>
    <associate|footnote-1|<tuple|1|4>>
    <associate|footnote-2|<tuple|2|5>>
    <associate|footnote-3|<tuple|3|5>>
    <associate|footnr-1|<tuple|1|4>>
    <associate|footnr-2|<tuple|2|5>>
    <associate|footnr-3|<tuple|3|5>>
    <associate|section: Detailed Balance Condition of Langevin Process Lacks
    Source-Free Degree of Freedom|<tuple|1.8|6>>
    <associate|section: From Brownian Motion to Central Limit
    Theorem|<tuple|1.3|2>>
    <associate|section: Kramers-Moyal Expansion and Langevin
    Process|<tuple|1|1>>
    <associate|section: Langevin Process Arises in the Difference of
    Scales|<tuple|1.4|3>>
    <associate|section: Spatial Expansion of Master Equation Gives
    Kramers-Moyal Expansion|<tuple|1.2|1>>
    <associate|section: Transition Rate of Langevin Process Is a Generalized
    Function|<tuple|1.5|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      1<space|2spc>Kramers-Moyal Expansion and Langevin Process
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Spatial Expansion of Master
      Equation Gives Kramers-Moyal Expansion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>From Brownian Motion to
      Central Limit Theorem <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Langevin Process Arises in
      the Difference of Scales <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Transition Rate of Langevin
      Process Is a Generalized Function <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Master Equation of Langevin
      Process Is Fokker-Planck Equation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Stationary Solution of
      Langevin Process Has Source-Free Degree of Freedom
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.8<space|2spc>Detailed Balance Condition
      of Langevin Process Lacks Source-Free Degree of Freedom
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>