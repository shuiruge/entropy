<TeXmacs|2.1.4>

<style|book>

<\body>
  <section|Least-Action Principle>

  In this section, we are to find a way of extracting dynamics (action or
  Lagrangian) from any raw data of any entity.

  <subsection|Conventions in This Section>

  Follow the conventions in section <reference|section: Master Equation,
  Detailed Balance, and Relative Entropy>. In addition, we use
  <math|P<around*|(|\<theta\>|)>> for a parameterized distribution, where
  <math|\<theta\>> is the collection of parameters. Its density function is
  <math|p<around*|(|x,\<theta\>|)>>, where random variable <math|X> takes the
  value <math|x>.

  <subsection|Data Fitting Is Equivalent to Least-Action
  Principle><label|section: Data Fitting Is Equivalent to Least-Action
  Principle>

  Let <math|P<around*|(|\<theta\>|)>> represent a parametrized distribution
  of <math|X>, and <math|P<rsub|0>> a distribution of <math|X> that
  represents prior knowledge as in the case of maximum-entropy principle. Let
  <math|V<around*|(|x,\<theta\>|)>\<assign\>-ln
  <around*|(|p<around*|(|x,\<theta\>|)>/p<rsub|0><around*|(|x|)>|)>-ln
  Z<around*|(|\<theta\>|)>> with <math|Z<around*|(|\<theta\>|)>> to be
  determined. Density <math|<wide|p|^>> is essential for defining <math|V>,
  since <math|ln p<around*|(|x,\<theta\>|)>> is not well-defined (section
  <reference|section: Shannon Entropy Fails for Continuous Random Variable>).
  Then, we can re-formulate <math|p<around*|(|x,\<theta\>|)>> as

  <\equation>
    p<around*|(|x,\<theta\>|)>=p<rsub|0><around*|(|x|)>
    exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>/Z<around*|(|\<theta\>|)>,<label|equation:Generic
    Density>
  </equation>

  and since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>,

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<rsub|0><around*|(|x|)> exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>.<label|equation:Partition
    Function>
  </equation>

  \;

  As a generic form of a parameterized distribution, it can be used to fit
  raw data that obeys an empirical distribution <math|Q>, by adjusting
  parameter <math|\<theta\>>. To do so, we minimize the relative entropy
  between <math|Q> and <math|P<around*|(|\<theta\>|)>>, which is defined as
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  q<around*|(|x|)> ln <around*|(|q<around*|(|x|)>/p<around*|(|x,\<theta\>|)>|)>>.
  Plugging equation <reference|equation:Generic Density> into
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>, we have

  <\equation*>
    H<around*|(|Q,P<around*|(|\<theta\>|)>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln q<around*|(|x|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln p<rsub|0><around*|(|x|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> V<around*|(|x,\<theta\>|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln Z<around*|(|\<theta\>|)>.
  </equation*>

  By omitting the <math|\<theta\>>-independent terms, we get the loss
  function

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|Q><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>+ln
    Z<around*|(|\<theta\>|)>.
  </equation*>

  We can find the <math|\<theta\><rsub|\<star\>>\<assign\>argmin L> by
  iteratively updating <math|\<theta\>> along the direction
  <math|-\<partial\>L/\<partial\>\<theta\>>. With a series of direct
  calculus,<\footnote>
    Directly, we have

    <\equation*>
      <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>+Z<rsup|-1><around*|(|\<theta\>|)>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>.
    </equation*>

    Since <math|Z<around*|(|\<theta\>|)>\<assign\><big|int>\<mathd\>x
    p<rsub|0><around*|(|x|)> exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>>,
    we find

    <\equation*>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      p<rsub|0><around*|(|x|)> exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>
      <frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    thus

    <\equation*>
      Z<rsup|-1><around*|(|\<theta\>|)> <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <around*|[|p<rsub|0><around*|(|x|)>
      exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>
      Z<rsup|-1><around*|(|\<theta\>|)>|]>
      <frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>=-<big|int>\<mathd\>x
      p<around*|(|x,\<theta\>|)> \ <frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    where in the last equality, we used the definition of
    <math|p<around*|(|x,\<theta\>|)>> (the blue parts). This final expression
    is just the <math|-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<around*|(|\<partial\>V/\<partial\>\<theta\><rsup|\<alpha\>>|)><around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  </footnote> we find

  <\equation>
    -<frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:data-fitting
    iteration>
  </equation>

  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|P<around*|(|\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>V|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>.<label|equation:data-fitting
    result>
  </equation>

  It can be read from equation <reference|equation:data-fitting iteration>
  that minimizing <math|L> is to increase
  <math|V<around*|(|\<cdummy\>,\<theta\>|)>> on the sampled points (the first
  term) while decrease it on data points (the second term). As figure
  <reference|figure: Least-Action> illustrates, this way of optimization will
  site real world data onto local minima of
  <math|V<around*|(|\<cdummy\>,\<theta\>|)>>, in statistical sense. In this
  way, the <math|V<around*|(|\<cdummy\>,\<theta\>|)>> is recognized as a
  parameterized action (in fact, it is the interactive part of action, and
  the free part locates in the prior density <math|p<rsub|0>>). It describes
  the interaction between the different components of an entity. This entity
  may be of physics, like a collection of particles. But it can also be
  words, genes, flock of birds, and so on. For example, we can find out how
  words \Pinteract\Q with each other.

  <big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1.00001cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-line-width|0.5ln|gr-dash-style|11100|gr-color|blue|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|-6.0|3.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|6.0|-3.0>>>|<math-at|V<around*|(|x,\<theta\>|)>|<point|-6.40049278190267|3.30061515056306>>|<math-at|x|<point|6.20000992178327|-3.1>>|<with|line-width|5ln|arrow-end|\<gtr\>|opacity|50%|color|red|<line|<point|-1.3|3.2>|<point|-1.3|1.7>>>|<with|line-width|5ln|color|blue|opacity|50%|arrow-begin|\<less\>|<line|<point|0.8|-0.83096059724234>|<point|0.8|-2.33096059724234>>>|<with|dash-style|11100|line-width|0.5ln|color|red|<line|<point|-1.3|1.4>|<point|-1.3|-3.0>>>|<with|color|red|<point|-1.3|1.41877>>|<with|color|red|<math-at|x<rsub|1>|<point|-1.4|-3.3>>>|<with|color|blue|<math-at|x<rsub|2>|<point|0.7|-3.3>>>|<with|dash-style|11100|line-width|0.5ln|color|blue|<line|<point|0.8|0.5>|<point|0.8|-3.0>>>|<with|color|blue|<point|0.8|-0.6>>|<with|color|dark
  cyan|dash-style|11100|<spline|<point|-5|1>|<point|-2.3|-0.7>|<point|0.8|0.5>|<point|3.04196914325401|2.48975575876838>|<point|4.2|2.2>>>|<with|color|dark
  cyan|<spline|<point|-5.04362277379988|-0.0748763911166967>|<point|-2.85798620872125|2.07284242554528>|<point|0.666826517619433|-0.580225885932565>|<point|3.38308005225473|1.9970400013229>|<point|4.21690671870091|2.62872686984274>>>>>|<label|figure:
  Least-Action> This figure illustrate how
  <math|min<rsub|\<theta\>>L<around*|(|\<theta\>|)>> will site a real world
  datum onto a local minimum of <math|V<around*|(|\<cdummy\>,\<theta\>|)>>.
  The green curve represents the current not-yet-optimized
  <math|V<around*|(|\<cdummy\>,\<theta\>|)>>. The <math|x<rsub|1>> (red
  point) is a real world datum while <math|x<rsub|2>> (blue point), which is
  currently a local minimum of <math|V<around*|(|\<cdummy\>,\<theta\>|)>>, is
  not. Minimizing <math|L> by tuning <math|\<theta\>> pushes the
  <math|\<bbb-E\><rsub|Q><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  down to lower value, corresponding to the red downward double-arrow on
  <math|x<rsub|1>>. Also, since <math|x<rsub|2>> is a local minimum, the data
  points sampled from <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>>
  will accumulate around <math|x<rsub|2>>. So, minimizing <math|L> also pulls
  the <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  up to greater value, corresponding to the blue upward double-arrow on
  <math|x<rsub|2>>. Altogether, it makes <math|x<rsub|1>> a local minimum of
  <math|V<around*|(|\<cdummy\>,\<theta\>|)>>, and
  <math|V<around*|(|\<cdummy\>,\<theta\>|)>> is optimized to be the dashed
  green curve.>

  <subsection|Example: Extract Dynamics from Raw Data><label|section:
  Example: Extract Dynamics from Raw Data>

  We are to apply the previous discussion to extract dynamics from the raw
  data of a physical system. To describe the system, we need a configuration
  like <math|x<around*|(|t|)>>. So, the raw data is a set
  <math|<around*|{|<around*|(|x<rsub|k><around*|(|1|)>,\<ldots\>,x<rsub|k><around*|(|T|)>|)>\|k=1,\<ldots\>,D|}>>
  where time is discretized as <math|<around*|(|1,\<ldots\>,T|)>> and the
  data size is <math|D>. Thus, each datum is a movie of the physical system,
  frame by frame. These raw data are obtained by experiments and measurements
  (with measurement errors).

  As a physical system, the prior distribution <math|P<rsub|0>> that
  represents free theory is Gaussian. It may be

  <\equation*>
    p<rsub|0><around*|(|x|)>\<propto\>exp<around*|{|-<frac|T|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  corresponding to the kinetic term <math|<around*|(|1/2|)><big|int><rsub|0><rsup|1>\<mathd\>t
  <wide|x|\<dot\>><rsup|2><around*|(|t|)>>.

  Corresponding to this free term, the <math|V> described in section
  <reference|section: Data Fitting Is Equivalent to Least-Action Principle>
  is given by some ansatz. First, we may suppose <math|V> to be local. That
  is, there is a function <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>>
  such that <math|V<around*|(|x,\<theta\>|)>=<around*|(|1/T|)><big|sum><rsub|t=1><rsup|T><with|font|cal|L><around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Next, we may suppose that there exist some symmetries about the physical
  system, such as autonomous and parity symmetry, which means
  <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. These symmetries will
  further restrict the possible form of the action. Finally, we can write
  down a most generic form of <math|<with|font|cal|L>> that satisfies all the
  ansatz. Neural network and symbolic regression may help you write down this
  most generic form. Then, we find the best fit
  <math|\<theta\><rsub|\<star\>>> by equation <reference|equation:Iteration>.
  The <math|V<around*|(|x,\<theta\><rsub|\<star\>>|)>>, together with the
  free term, describes the dynamics extracted from the raw data.

  As an example, consider an one-dimensional harmonic oscillator. The
  configuration is a function in <math|C<rsup|1><around*|(|<around*|[|0,1|]>,\<bbb-R\>|)>>,
  where we have \Pnormalized\Q the time period to <math|<around*|[|0,1|]>>.
  Then, its action is given by <math|<big|int><rsub|0><rsup|1>\<mathd\>t
  <around*|[|<around*|(|1/2|)> <wide|x|\<dot\>><rsup|2><around*|(|t|)>-<around*|(|1/2|)>
  \<omega\><rsup|2> x<rsup|2><around*|(|t|)>|]>>, for some
  <math|\<omega\>\<in\>\<bbb-R\>>. In the discrete perspective, the time
  period is uniformly separated into <math|T> frames. The
  <math|x<around*|(|t|)>> becomes a <math|T>-dimensional vector; and the
  action turns to be

  <\equation>
    S<around*|(|x|)>=<frac|T|2> <big|sum><rsub|t=1><rsup|T-1><around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>-<frac|\<omega\><rsup|2>|2T>
    <big|sum><rsub|t=1><rsup|T>x<rsup|2><around*|(|t|)>.<label|equation:harmonic
    oscillator action>
  </equation>

  The first term is recognized as free part and the second the interactive
  part. We can use a parameterized function to fit the interactive part (that
  is, the <math|<around*|(|\<omega\><rsup|2>/2|)> x<rsup|2><around*|(|t|)>>
  factor in the second term). For example, a function with parameters
  <math|<around*|(|\<theta\><rsub|1>,\<ldots\>,\<theta\><rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>,
  <math|<with|font|cal|L><around*|(|x,t,\<theta\>|)>\<assign\>\<theta\><rsub|1>
  x<rsup|2>+\<theta\><rsub|2> x<rsup|4>+\<cdots\>+\<theta\><rsub|n>
  x<rsup|2n>>.<\footnote>
    An experiment on general oscillators can be found in the
    <samp|oscillators/Oscillator.ipynb>.
  </footnote>

  <subsection|Is There an Action for a Dynamical System?>

  Configuration can be represented by a high-dimensional vector. As discussed
  in section <reference|section: Example: Extract Dynamics from Raw Data>,
  the configuration of physical system should be a function
  <math|x<around*|(|t|)>:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\><rsup|m>>,
  but discretized to a vector <math|<around*|(|x<around*|(|1|)>,\<ldots\>,x<around*|(|T|)>|)>\<in\>\<bbb-R\><rsup|m\<times\>T>>
  where <math|T> represents the number of frames. Thus, an action, including
  the free part (given by prior distribution <math|P<rsub|0>>) and
  interactive part (the paramterized function <math|V>), can be represented
  as <math|S<around*|(|x|)>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>, where
  <math|n\<assign\>m\<times\>T>. This discrete perspective greatly simplifies
  the situation. For example, the variation of action is simply <math|-T
  \<nabla\>S<around*|(|x|)>>.

  In the example of harmonic oscillator (equation
  <reference|equation:harmonic oscillator action>), we find (we have included
  both the free term and interactive term in the action <math|S>)

  <\equation*>
    -T <frac|\<partial\>S|\<partial\>x<around*|(|t|)>>=T<rsup|2>
    <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>-\<omega\><rsup|2>
    x<around*|(|t|)>
  </equation*>

  for each <math|t=2,\<ldots\>,T-1>. Recalling that
  <math|<wide|x|\<ddot\>><around*|(|t|)>> is discretized to <math|T<rsup|2>
  <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>>, we
  find <math|-T \<partial\>S/\<partial\>x<around*|(|t|)>> tends to
  <math|<wide|x|\<ddot\>><around*|(|t|)>+\<omega\><rsup|2> x<around*|(|t|)>>
  as <math|T\<rightarrow\>+\<infty\>>. For the boundaries <math|t=1> and
  <math|t=T>, we have <math|-T \<partial\>S/\<partial\>x<around*|(|1|)>=-T<rsup|2>
  <around*|[|x<around*|(|2|)>-x<around*|(|1|)>|]>-\<omega\><rsup|2>
  x<rsup|2><around*|(|1|)>>, and <math|-T
  \<partial\>S/\<partial\>x<around*|(|T|)>=T<rsup|2>
  <around*|[|x<around*|(|T|)>-x<around*|(|T-1|)>|]>-\<omega\><rsup|2>
  x<rsup|2><around*|(|T|)>>. Both are meaningless in continous perspective.
  Thus, there are <math|T-2> equations for one-dimensional harmonic
  oscillator obtained by variation.

  On the other hand, equation of motion can be represented by
  <math|f<around*|(|x|)>=0> where <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n-m>>
  where <math|m> represents the order of the equation of motion. In the case
  of one-dimensional harmonic oscillator, the equation of motion is second
  order. In the discrete perspective, there are <math|T-2> constraints,
  implying <math|m=2>. The two extra degree of freedom are assigned to the
  initial position and velocity of oscillator. If the initial conditions are
  given, we will have <math|m=0>, thus <math|f:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>.

  If we want to represent the equation of motion by the variation of action
  (in the continuous perspective it is <math|f<around*|(|t,x<around*|(|t|)>,<wide|x|\<dot\>><around*|(|t|)>,\<ldots\>|)>=\<delta\>S/\<delta\>x<around*|(|t|)>>),
  we can write <math|f<rsub|\<alpha\>><around*|(|x|)>=-\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>
  for each <math|\<alpha\>=1,\<ldots\>,n>. This cannot be true for all
  <math|f> since <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S<around*|(|x|)>\<equiv\>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>
  while generally we do not have <math|\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<beta\>>
  f<rsub|\<alpha\>><around*|(|x|)>>. (By Helmholtz decompostion,
  <math|f<around*|(|x|)>=\<nabla\>\<varphi\><around*|(|x|)>+\<nu\><around*|(|x|)>>
  where <math|\<nabla\>\<cdot\>\<nu\><around*|(|x|)>=0>.<\footnote>
    A simple derivation of Helmholtz decomposition is as follow. It is well
    known that, given a vector <math|k\<in\>\<bbb-R\><rsup|n>>, any vector
    <math|y\<in\>\<bbb-R\><rsup|n>> can be decomposed into two parts: one
    that parallel to <math|k> and the other normal to <math|k>. That is,
    <math|y=y<rsub|\<parallel\>>+y<rsub|\<bot\>>>, wherein
    <math|k\<times\>y<rsub|\<parallel\>>=0> and
    <math|k\<cdot\>y<rsub|\<bot\>>=0>. This holds for any vector field
    <math|y:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>:
    <math|y<around*|(|k|)>=y<rsub|\<parallel\>><around*|(|k|)>+y<rsub|\<bot\>><around*|(|k|)>>,
    <math|k\<times\>y<rsub|\<parallel\>><around*|(|k|)>=0>, and
    <math|k\<cdot\>y<rsub|\<bot\>><around*|(|k|)>=0>. By Fourier transform,
    this relation becomes <math|<wide|y|^><around*|(|x|)>=<wide|y|^><rsub|\<parallel\>><around*|(|x|)>+<wide|y|^><rsub|\<bot\>><around*|(|x|)>>,
    <math|\<nabla\>\<times\><wide|y|^><rsub|\<parallel\>><around*|(|x|)>=0>,
    and <math|\<nabla\>\<cdot\><wide|y|^><rsub|\<bot\>><around*|(|x|)>=0>.
    Since every curl-free vector field is the gradient of a scale field, thus
    <math|<wide|y|^><rsub|\<parallel\>><around*|(|x|)>=\<nabla\>\<sigma\><around*|(|x|)>>
    where <math|\<sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>. So, we
    find that any smooth vector field <math|v:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    can be composed into <math|v<around*|(|x|)>=\<nabla\>\<sigma\><around*|(|x|)>+\<nu\><around*|(|x|)>>
    where <math|\<sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    and <math|\<nu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> with
    <math|><math|\<nabla\>\<cdot\>\<nu\><around*|(|x|)>=0>.
  </footnote> Thus, <math|\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<beta\>>
  f<rsub|\<alpha\>><around*|(|x|)>> means
  <math|\<partial\><rsub|\<alpha\>>\<nu\><rsub|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<beta\>>\<nu\><rsub|\<alpha\>><around*|(|x|)>>
  for each <math|\<alpha\>> and <math|\<beta\>>. Applying
  <math|<big|sum><rsub|\<alpha\>>\<partial\><rsup|\<alpha\>>> to both sides
  gives <math|\<partial\><rsup|\<alpha\>>\<partial\><rsub|\<alpha\>>
  \<nu\><rsub|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<beta\>>\<partial\><rsup|\<alpha\>>v<rsub|\<alpha\>><around*|(|x|)>=0>.
  Hence, <math|\<nu\><rsub|\<alpha\>><around*|(|x|)>> is harmonic for each
  <math|\<alpha\>>, which is not satisfied in general.)

  But, if <math|f<around*|(|x|)>=0> is an equation of motion, so will be
  <math|A<rsub|\<alpha\>\<beta\>><around*|(|x|)>
  f<rsup|\<beta\>><around*|(|x|)>=0> for any smooth and invertible matrix
  valued field <math|A:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>.
  The <math|A f=0> is an equation of motion that is equivalent to <math|f=0>.
  So, we may expect

  <\equation>
    A<rsub|\<alpha\>\<beta\>><around*|(|x|)>
    f<rsup|\<beta\>><around*|(|x|)>=-\<partial\><rsub|\<alpha\>>S<around*|(|x|)><label|equation:eom
    and action>
  </equation>

  holds for a general class of equation of motion <math|f> as long as we can
  find the corresponding <math|A>. We wonder, given <math|f>, if there is
  such an <math|A> and an <math|S> that this relation holds?

  To determine <math|A>, for any <math|S>, we have
  <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S=\<partial\><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>S>,
  thus <math|\<partial\><rsub|\<beta\>><around*|[|A<rsub|\<alpha\>\<gamma\>><around*|(|x|)>
  f<rsup|\<gamma\>><around*|(|x|)>|]>=\<partial\><rsub|\<alpha\>><around*|[|A<rsub|\<beta\>\<gamma\>><around*|(|x|)>
  f<rsup|\<gamma\>><around*|(|x|)>|]>>. So,

  <\equation*>
    \<partial\><rsub|\<beta\>>A<rsub|\<alpha\>\<gamma\>>
    f<rsup|\<gamma\>><around*|(|x|)>+A<rsub|\<alpha\>\<gamma\>>
    \<partial\><rsub|\<beta\>>f<rsup|\<gamma\>>=\<partial\><rsub|\<alpha\>>A<rsub|\<beta\>\<gamma\>>
    f<rsup|\<gamma\>><around*|(|x|)>+A<rsub|\<beta\>\<gamma\>>
    \<partial\><rsub|\<alpha\>>f<rsup|\<gamma\>>.
  </equation*>

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|>|<cell|>>>>
  </eqnarray*>

  Recall that Langevin dynamics that satisfies detailed balance condition has

  <\equation*>
    \<mu\><rsup|\<alpha\>><around*|(|x|)> \<pi\><around*|(|x|)>=
    \<partial\><rsub|\<beta\>><around*|(|\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<pi\><around*|(|x|)>|)>,
  </equation*>

  or say,

  <\equation*>
    \<mu\><rsup|\<alpha\>><around*|(|x|)>=
    \<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>
    \<partial\><rsub|\<beta\>>ln \<pi\><around*|(|x|)>+\<partial\><rsub|\<beta\>>\<Sigma\><rsup|\<alpha\>\<beta\>><around*|(|x|)>.
  </equation*>

  <subsection|Drafts>

  <subsubsection|Damped Oscillator>

  <\equation*>
    -T <frac|\<partial\>S|\<partial\>x<around*|(|t|)>>=T<rsup|2>
    <around*|[|x<around*|(|t+1|)>-2x<around*|(|t|)>+x<around*|(|t-1|)>|]>+T
    \<gamma\> <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]>-\<omega\><rsup|2>
    x<around*|(|t|)>
  </equation*>

  <\equation*>
    -T <frac|\<partial\><rsup|2>S|\<partial\>x<around*|(|t-1|)>\<partial\>x<around*|(|t|)>>=T<rsup|2>
  </equation*>

  <\equation*>
    -T <frac|\<partial\>S|\<partial\>x<around*|(|t-1|)>>=T<rsup|2>
    <around*|[|x<around*|(|t|)>-2x<around*|(|t-1|)>+x<around*|(|t-2|)>|]>+T
    \<gamma\> <around*|[|x<around*|(|t|)>-x<around*|(|t-1|)>|]>-\<omega\><rsup|2>
    x<around*|(|t-1|)>
  </equation*>

  <\equation*>
    -T <frac|\<partial\><rsup|2>S|\<partial\>x<around*|(|t|)>\<partial\>x<around*|(|t-1|)>>=T<rsup|2>+T
    \<gamma\>
  </equation*>

  <subsubsection|Coordinate Transformation>

  The invertibility of matrix field <math|A> remind us of coordinate
  transformation, where the diffeomorphism
  <math|y<around*|(|x|)>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
  provides an invertible matrix field <math|<around*|(|\<partial\>y/\<partial\>x|)><around*|(|x|)>>.
  By making such a coordinate transformation, we have
  <math|\<partial\><rsub|\<alpha\>>S\<assign\>\<partial\>S/\<partial\>x<rsup|\<alpha\>>=<around*|(|\<partial\>y<rsup|\<beta\>>/\<partial\>x<rsup|\<alpha\>>|)>
  <around*|(|\<partial\>S/\<partial\>y<rsup|\<beta\>>|)>>. Denote
  <math|\<partial\><rsub|\<alpha\>><rprime|'>S<around*|(|y|)>\<assign\><around*|(|\<partial\>S/\<partial\>y<rsup|\<alpha\>>|)><around*|(|y|)>>,
  and <math|A<around*|(|y|)>\<assign\><around*|(|\<partial\>x/\<partial\>y|)><around*|(|y|)>>,
  then from <math|\<partial\><rsub|\<alpha\>>S<around*|(|x|)>=f<rsub|\<alpha\>><around*|(|x|)>>
  we get <math|\<partial\><rprime|'><rsub|\<alpha\>>S<around*|(|y|)>=A<rsub|\<alpha\>\<beta\>><around*|(|y|)>
  <around*|(|f<rsup|\<beta\>>\<circ\>x|)><around*|(|y|)>>.

  <subsubsection|Degree of Freedom>

  We first consider degree of freedom. On the left hand side, there are
  <math|n\<times\>n> degree of freedom from <math|A> (<math|f> does not
  provide degree of freedom because it has been fixed), and on the right hand
  side there is one from <math|S>. Thus, totally <math|n\<times\>n+1> degree
  of freedom. On the restrictions, we have one from
  <math|det<around*|(|A|)>\<neq\>0>, and <math|n> from the fact this formula
  has <math|n> components. Thus, totally <math|n+1> restrictions. It seems
  that, from this very rough counting of degree of freedom, the equation
  <reference|equation:eom and action> is solvable.

  But it is hard to say so. For example, if let
  <math|\<partial\><rsub|\<alpha\>>S<around*|(|x|)>\<equiv\><around*|(|1,0,0,\<ldots\>|)>>
  and <math|B\<assign\>A<rsup|-1>> (should exist), then there are
  <math|n\<times\>n> degree of freedom left (still sufficiently many), and we
  would have <math|f<rsup|\<alpha\>><around*|(|x|)>=B<rsup|\<alpha\>\<beta\>><around*|(|x|)>
  \<partial\><rsub|\<alpha\>>S<around*|(|x|)>=B<rsup|\<alpha\>
  1><around*|(|x|)>>. It suggests that, for any smooth vector field <math|f>
  given, we can construct <math|A> in such a way that the first column of
  <math|B> is defined to be <math|f>. The other columns of <math|B> are
  chosen so as to make <math|B> invertible (as a matrix valued field on
  <math|\<bbb-R\><rsup|n>>). This, however, cannot be done since there is an
  <math|x<rsub|\<star\>>>, the so called classical solution, such that
  <math|f<around*|(|x<rsub|\<star\>>|)>=0>. Then, the first column of
  <math|B> vanishes and thus <math|det<around*|(|B|)>=0>. We must have, when
  <math|f<around*|(|x|)>=0>, <math|\<nabla\>S<around*|(|x|)>=0> for ensuring
  the invertibility of <math|A<around*|(|x|)>>.

  <subsubsection|Diagonal Matrix>

  Following this, consider <math|B<rsub|\<alpha\>\<beta\>><around*|(|x|)>=\<lambda\><rsub|\<alpha\>><around*|(|x|)>
  \<delta\><rsub|\<alpha\>\<beta\>>>, thus we would expect
  <math|\<lambda\><rsub|\<alpha\>><around*|(|x|)>\<neq\>0> for all <math|x>
  and <math|\<alpha\>>. So, <math|f<rsub|\<alpha\>><around*|(|x|)>=\<lambda\><rsub|\<alpha\>><around*|(|x|)>
  \<partial\><rsub|\<alpha\>>S<around*|(|x|)>> for any <math|\<alpha\>>. In
  the case when <math|\<lambda\><rsub|\<alpha\>><around*|(|x|)>> is constant
  for each <math|\<alpha\>> and <math|x>, we would have
  <math|\<partial\><rsub|\<beta\>>f<rsub|\<alpha\>>-\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>>=0>.
  But now, when <math|\<lambda\><rsub|\<alpha\>><around*|(|x|)>> varies, we
  have <math|\<partial\><rsub|\<beta\>>f<rsub|\<alpha\>>=\<partial\><rsub|\<beta\>>\<lambda\><rsub|\<alpha\>>
  \<partial\><rsub|\<alpha\>>S+\<lambda\><rsub|\<alpha\>>
  \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S> and
  <math|\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>>=\<partial\><rsub|\<alpha\>>\<lambda\><rsub|\<beta\>>
  \<partial\><rsub|\<beta\>>S+\<lambda\><rsub|\<beta\>>
  \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S>. Thus, for each
  <math|\<alpha\>> and <math|\<beta\>>, <math|\<partial\><rsub|\<beta\>>f<rsub|\<alpha\>>-\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>>=\<partial\><rsub|\<beta\>>\<lambda\><rsub|\<alpha\>>
  \<partial\><rsub|\<alpha\>>S-\<partial\><rsub|\<alpha\>>\<lambda\><rsub|\<beta\>>
  \<partial\><rsub|\<beta\>>S+<around*|(|\<lambda\><rsub|\<alpha\>>-\<lambda\><rsub|\<beta\>>|)>\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S>.
  The <math|\<lambda\><rsub|\<alpha\>><around*|(|x|)>> as a non-constant
  vector field makes it possible that <math|\<partial\><rsub|\<beta\>>f<rsub|\<alpha\>>-\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>>>
  may not vanish. Also, in the case when <math|f<around*|(|x<rsub|\<star\>>|)>=0>,
  we have <math|\<nabla\>S<around*|(|x<rsub|\<star\>>|)>=0>, thus, at
  <math|x<rsub|\<star\>>>, <math|\<partial\><rsub|\<beta\>>f<rsub|\<alpha\>>-\<partial\><rsub|\<alpha\>>f<rsub|\<beta\>>=<around*|(|\<lambda\><rsub|\<alpha\>>-\<lambda\><rsub|\<beta\>>|)>
  \<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S>.

  TODO

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional>

  In fact, equations <reference|equation:Generic Density>,
  <reference|equation:Partition Function>, and
  <reference|equation:data-fitting result> can be regarded as an extremum of
  the functional (recall that <math|P<rsub|0>> is the distribution of prior
  knowledge and <math|Q> of dataset)

  <\equation*>
    L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>\<assign\>H<around*|[|P,P<rsub|0>|]>+<around*|(|\<bbb-E\><rsub|P><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|P><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\small>
    <\equation>
      L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>ln<frac|p<around*|(|x|)>|p<rsub|0><around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>V<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
      q<around*|(|x|)>V<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
      p<around*|(|x|)>-1|)>.<label|equation:Ltot>
    </equation>
  </small>

  Indeed, variance on <math|p> gives equation <reference|equation:Generic
  Density>.<\footnote>
    Explicitly, we have

    <\equation*>
      <frac|\<delta\>|\<delta\>p<around*|(|x|)>>L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>=ln
      p<around*|(|x|)>+1-ln p<rsub|0><around*|(|x|)>+V<around*|(|x,\<theta\>|)>+\<mu\>=0,
    </equation*>

    which has solution

    <\equation*>
      p<around*|(|x|)>\<propto\>p<rsub|0><around*|(|x|)>
      exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>.
    </equation*>
  </footnote> Together with the partial derivative on <math|\<mu\>>, we get
  equation <reference|equation:Partition Function>. Finally, partial
  derivative on <math|\<theta\>> directly gives equation
  <reference|equation:data-fitting result>. In addition, decreasing the
  <math|L<around*|(|\<theta\>|)>> by iteration
  <reference|equation:data-fitting iteration> is increasing the second term
  in equation <reference|equation:Ltot>. So, the extremum is in fact a saddle
  point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=min<rsub|p,\<mu\>>
    max<rsub|\<theta\>>L<rsub|tot><around*|(|p,\<theta\>,\<mu\>|)>.<label|equation:V
    extremum>
  </equation>

  \;

  By tuning <math|p>, the <math|min<rsub|p,\<mu\>>> minimizes the relative
  entropy between <math|P> and <math|Q> and the expectation
  <math|\<bbb-E\><rsub|P><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>,
  which in turn relates the density function <math|p> with the interactive
  action <math|V<around*|(|\<cdummy\>,\<theta\>|)>>. And by tuning
  <math|\<theta\>>, the <math|max<rsub|\<theta\>>> sites real data onto the
  local minima of interactive action. So, we find that maximum-entropy
  principle and least-action principle are saddle point of a functional
  <math|L<rsub|tot>> (the subscript is short for totality).

  <subsection|Structures in Nature Arise from Maximum-Entropy>

  There are many structures in nature. The structure of vascular system is a
  simple instance. A more complicated structure appears in the bases along
  chromosome. Why does these structures arise in nature?

  The vascular system is fine-tuned so as to minimize the frictional loss.
  The chromosome that determines the phenotype of an organism is also
  fine-tuned such that the probability of survival is maximal. These examples
  indicate that structure appears in optimizing an objective.

  So, let random variable <math|X> characterize the configuration, such as
  the sequence of bases along chromosome. There is an action that reflects
  the interaction of bases and the environment. The one that survives has the
  most \Pcoherent\Q chromosome that minimizes the action. The \Psurvival\Q
  distribution is given by the action. This distribution has many local
  maxima. The maximal local maxima represents the creature that has the
  highest adaptation, maybe human.

  The action would be very complex. But, inversely, given the real world data
  of chromosome, the action can be revealed by parameterized function and
  least-action principle. To do so, we first travel to a closed island, such
  as Galápagos Islands, which forms a closed system. Then, we collect the
  chromosomes of all creatures living on the island. Since different
  creatures have different lengths of chromosome, we have to unify the coding
  of chromosomes. This furnishes the alphabet <math|\<cal-X\>>, and the
  collection of chromosomes characterizes the distribution of real world
  data, <math|Q>. Let <math|S<around*|(|x,\<theta\>|)>> a parameterized
  function, with parameters <math|\<theta\>>. The least-action principle
  gives the best fit <math|\<theta\><rsub|\<star\>>> by minimizing the
  <math|L<rsub|LA>>. During the minimization, we have to sample from
  <math|P<around*|(|\<theta\>|)>>, where the density function
  <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>.
  The strategy is using a transition rate that satisfies the detailed balance
  condition. This transition rate minics the evolution. <with|color|red|The
  disconnectivity of transition rate may reflect gene isolation.>

  TODO
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
    <associate|auto-10|<tuple|1.5.3|4>>
    <associate|auto-11|<tuple|1.5.4|5>>
    <associate|auto-12|<tuple|1.6|5>>
    <associate|auto-13|<tuple|1.7|5>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|4>>
    <associate|auto-8|<tuple|1.5.1|4>>
    <associate|auto-9|<tuple|1.5.2|4>>
    <associate|equation:Generic Density|<tuple|1|1>>
    <associate|equation:Ltot|<tuple|7|5>>
    <associate|equation:Partition Function|<tuple|2|1>>
    <associate|equation:V extremum|<tuple|8|5>>
    <associate|equation:data-fitting iteration|<tuple|3|1>>
    <associate|equation:data-fitting result|<tuple|4|1>>
    <associate|equation:eom and action|<tuple|6|4>>
    <associate|equation:harmonic oscillator action|<tuple|5|3>>
    <associate|figure: Least-Action|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|3>>
    <associate|footnote-4|<tuple|4|5>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|3>>
    <associate|footnr-4|<tuple|4|5>>
    <associate|section: Data Fitting Is Equivalent to Least-Action
    Principle|<tuple|1.2|1>>
    <associate|section: Example: Extract Dynamics from Raw
    Data|<tuple|1.3|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This figure
      illustrate how <with|mode|<quote|math>|min<rsub|\<theta\>>L<around*|(|\<theta\>|)>>
      will site a real world datum onto a local minimum of
      <with|mode|<quote|math>|V<around*|(|\<cdummy\>,\<theta\>|)>>. The green
      curve represents the current not-yet-optimized
      <with|mode|<quote|math>|V<around*|(|\<cdummy\>,\<theta\>|)>>. The
      <with|mode|<quote|math>|x<rsub|1>> (red point) is a real world datum
      while <with|mode|<quote|math>|x<rsub|2>> (blue point), which is
      currently a local minimum of <with|mode|<quote|math>|V<around*|(|\<cdummy\>,\<theta\>|)>>,
      is not. Minimizing <with|mode|<quote|math>|L> by tuning
      <with|mode|<quote|math>|\<theta\>> pushes the
      <with|mode|<quote|math>|\<bbb-E\><rsub|Q><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      down to lower value, corresponding to the red downward double-arrow on
      <with|mode|<quote|math>|x<rsub|1>>. Also, since
      <with|mode|<quote|math>|x<rsub|2>> is a local minimum, the data points
      sampled from <with|mode|<quote|math>|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-V<around*|(|x,\<theta\>|)>|)>>
      will accumulate around <with|mode|<quote|math>|x<rsub|2>>. So,
      minimizing <with|mode|<quote|math>|L> also pulls the
      <with|mode|<quote|math>|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|V<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      up to greater value, corresponding to the blue upward double-arrow on
      <with|mode|<quote|math>|x<rsub|2>>. Altogether, it makes
      <with|mode|<quote|math>|x<rsub|1>> a local minimum of
      <with|mode|<quote|math>|V<around*|(|\<cdummy\>,\<theta\>|)>>, and
      <with|mode|<quote|math>|V<around*|(|\<cdummy\>,\<theta\>|)>> is
      optimized to be the dashed green curve.>|<pageref|auto-4>>
    </associate>
    <\associate|toc>
      1<space|2spc>Least-Action Principle
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Conventions in This Section
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Data Fitting Is Equivalent
      to Least-Action Principle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Example: Extract Dynamics
      from Raw Data <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Is There an Action for a
      Dynamical System? <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>Drafts
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|2tab>|1.5.1<space|2spc>Damped Oscillator
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|2tab>|1.5.2<space|2spc>Coordinate Transformation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|2tab>|1.5.3<space|2spc>Degree of Freedom
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|2tab>|1.5.4<space|2spc>Diagonal Matrix
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Structures in Nature Arise
      from Maximum-Entropy <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>