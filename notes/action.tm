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
  of <math|X>, and <math|<wide|P|^>> a distribution of <math|X> that
  represents prior knowledge as in the case of maximum-entropy principle. Let
  <math|S<around*|(|x,\<theta\>|)>\<assign\>-ln
  <around*|(|p<around*|(|x,\<theta\>|)>/<wide|p|^><around*|(|x|)>|)>-ln
  Z<around*|(|\<theta\>|)>> with <math|Z<around*|(|\<theta\>|)>> to be
  determined. Density <math|<wide|p|^>> is essential for defining <math|S>,
  since <math|ln p<around*|(|x,\<theta\>|)>> is not well-defined (section
  <reference|section: Shannon Entropy Fails for Continuous Random Variable>).
  Then, we can re-formulate <math|p<around*|(|x,\<theta\>|)>> as

  <\equation>
    p<around*|(|x,\<theta\>|)>=<wide|p|^><around*|(|x|)>
    exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>/Z<around*|(|\<theta\>|)>,<label|equation:Generic
    Density>
  </equation>

  and since <math|<big|int><rsub|\<cal-X\>>\<mathd\>x
  p<around*|(|x,\<theta\>|)>=1>,

  <\equation>
    Z<around*|(|\<theta\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>.<label|equation:Partition
    Function>
  </equation>

  \;

  As a generic form of a parameterized distribution, it can be used to fit
  raw data that obeys an empirical distribution <math|Q>, by adjusting
  parameter <math|\<theta\>>. To do so, we minimize the relative entropy
  between <math|Q> and <math|P<around*|(|\<theta\>|)>>, which is defined as
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>\<assign\><big|int><rsub|\<cal-X\>>\<mathd\>x
  q<around*|(|x|)> ln <around*|(|q<around*|(|x|)>/p<around*|(|x,\<theta\>|)>|)>>.
  Plugging equation (<reference|equation:Generic Density>) into
  <math|H<around*|(|Q,P<around*|(|\<theta\>|)>|)>>, we have

  <\equation*>
    H<around*|(|Q,P<around*|(|\<theta\>|)>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln q<around*|(|x|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> <wide|p|^><around*|(|x|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> S<around*|(|x,\<theta\>|)>+<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)> ln Z<around*|(|\<theta\>|)>.
  </equation*>

  By omitting the <math|\<theta\>>-independent terms, we get the loss
  function

  <\equation*>
    L<around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>+ln
    Z<around*|(|\<theta\>|)>.
  </equation*>

  We can find the <math|\<theta\><rsub|\<star\>>\<assign\>argmin L> by
  iteratively updating <math|\<theta\>> along the direction
  <math|-\<partial\>L/\<partial\>\<theta\>>. With a series of direct
  calculus,<\footnote>
    Directly, we have

    <\equation*>
      <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>+Z<rsup|-1><around*|(|\<theta\>|)>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>.
    </equation*>

    Since <math|Z<around*|(|\<theta\>|)>\<assign\><big|int>\<mathd\>x
    <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>,
    we find

    <\equation*>
      <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <wide|p|^><around*|(|x|)> exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    thus

    <\equation*>
      Z<rsup|-1><around*|(|\<theta\>|)> <frac|\<partial\>Z|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=-<big|int>\<mathd\>x
      <with|color|blue|<wide|p|^><around*|(|x|)>
      exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>
      Z<rsup|-1><around*|(|\<theta\>|)>> <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>=-<big|int>\<mathd\>x
      p<around*|(|x,\<theta\>|)> \ <frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|x,\<theta\>|)>,
    </equation*>

    where in the last equality, we used the definition of
    <math|p<around*|(|x,\<theta\>|)>> (the blue parts). This final expression
    is just the <math|-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<around*|(|\<partial\>S/\<partial\>\<theta\><rsup|\<alpha\>>|)><around*|(|\<cdummy\>,\<theta\>|)>|]>>.
  </footnote> we find

  <\equation>
    <frac|\<partial\>L|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<theta\>|)>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:Iteration>
  </equation>

  At the minimum, we shall have <math|\<partial\>L/\<partial\>\<theta\>=0>.
  Then, we find that <math|\<theta\><rsub|\<star\>>> obeys

  <\equation>
    \<bbb-E\><rsub|P<around*|(|\<theta\><rsub|\<star\>>|)>><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>=\<bbb-E\><rsub|Q><around*|[|<frac|\<partial\>S|\<partial\>\<theta\><rsup|\<alpha\>>><around*|(|\<cdummy\>,\<theta\><rsub|\<star\>>|)>|]>.<label|equation:Restriction>
  </equation>

  Notice that <math|L> is equivalent to another loss <math|L<rsub|LA>> where

  <\equation>
    L<rsub|LA><around*|(|\<theta\>|)>\<assign\>\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>.<label|equation:Equivalent
    Loss>
  </equation>

  The expectation <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>>> is computed
  by Monte-Carlo method. We sample data points from
  <math|P<around*|(|\<theta\>|)>> with fixed <math|\<theta\>>, and compute
  the mean value of <math|S<around*|(|\<cdummy\>,\<theta\>|)>> on these data
  points. <with|font-shape|italic|The derivative of <math|\<theta\>> on this
  expectation is taken on the <math|S<around*|(|\<cdummy\>,\<theta\>|)>>
  instead of on the data points.> In this way, <math|L<rsub|LA>> is
  equivalent to <math|L>.

  It can be read from this equation that minimizing <math|L<rsub|LA>> is to
  decrease the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> at data points (the
  first term) while increase it at the points away from data (the second
  term). As figure <reference|figure: Least-Action> illustrates, this way of
  optimization will site a real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, in statistical sense. In this
  way, the <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is recognized as a
  parameterized action. It thus describes the dynamics of an entity. This
  entity may be of physics, like particles. But it can also be words, genes,
  flock of birds, and so on. For example, we can find out how words
  \Pinteract\Q with each other.

  <big-figure|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1.00001cm|<tuple|0.5gw|0.5gh>>|gr-geometry|<tuple|geometry|10|10|center>|gr-grid|<tuple|empty>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|10|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-line-width|0.5ln|gr-dash-style|11100|gr-color|blue|<graphics||<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|-6.0|3.0>>>|<with|arrow-end|\|\<gtr\>|<line|<point|-6|-3>|<point|6.0|-3.0>>>|<math-at|S<around*|(|x,\<theta\>|)>|<point|-6.40049278190267|3.30061515056306>>|<math-at|x|<point|6.20000992178327|-3.1>>|<with|line-width|5ln|arrow-end|\<gtr\>|opacity|50%|color|red|<line|<point|-1.3|3.2>|<point|-1.3|1.7>>>|<with|line-width|5ln|color|blue|opacity|50%|arrow-begin|\<less\>|<line|<point|0.8|-0.83096059724234>|<point|0.8|-2.33096059724234>>>|<with|dash-style|11100|line-width|0.5ln|color|red|<line|<point|-1.3|1.4>|<point|-1.3|-3.0>>>|<with|color|red|<point|-1.3|1.41877>>|<with|color|red|<math-at|x<rsub|1>|<point|-1.4|-3.3>>>|<with|color|blue|<math-at|x<rsub|2>|<point|0.7|-3.3>>>|<with|dash-style|11100|line-width|0.5ln|color|blue|<line|<point|0.8|0.5>|<point|0.8|-3.0>>>|<with|color|blue|<point|0.8|-0.6>>|<with|color|dark
  cyan|dash-style|11100|<spline|<point|-5|1>|<point|-2.3|-0.7>|<point|0.8|0.5>|<point|3.04196914325401|2.48975575876838>|<point|4.2|2.2>>>|<with|color|dark
  cyan|<spline|<point|-5.04362277379988|-0.0748763911166967>|<point|-2.85798620872125|2.07284242554528>|<point|0.666826517619433|-0.580225885932565>|<point|3.38308005225473|1.9970400013229>|<point|4.21690671870091|2.62872686984274>>>>>|<label|figure:
  Least-Action> This figure illustrate how
  <math|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>> will site a
  real world datum onto a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green curve represents the
  current not-yet-optimized <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
  <math|x<rsub|1>> (red point) is a real world datum while <math|x<rsub|2>>
  (blue point), which is currently a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>, is not. Minimizing
  <math|L<rsub|LA>> by tuning <math|\<theta\>> pushes the
  <math|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  down to lower value, corresponding to the red downward double-arrow on
  <math|x<rsub|1>>. Also, since <math|x<rsub|2>> is a local minimum, the data
  points sampled from <math|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
  will accumulate around <math|x<rsub|2>>. So, minimizing <math|L<rsub|LA>>
  also pulls the <math|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
  up to greater value, corresponding to the blue upward double-arrow on
  <math|x<rsub|2>>. Altogether, it makes <math|x<rsub|1>> a local minimum of
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> and
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>> is optimized to be the dashed
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

  As a physical system, the <math|<wide|p|^>> that represents free theory
  shall be Gaussian. It may be

  <\equation*>
    <wide|p|^><around*|(|x|)>\<propto\>exp<around*|{|-<frac|1|2><big|sum><rsub|t=1><rsup|T-1>
    <around*|[|x<around*|(|t+1|)>-x<around*|(|t|)>|]><rsup|2>|}>,
  </equation*>

  indicating a kinetic term.

  The action <math|S<around*|(|x,\<theta\>|)>> is given by some ansatz.
  First, we may suppose that the action is local. That is, there is a
  Lagrangian <math|L<around*|(|x,t,\<theta\>|)>> such that
  <math|S<around*|(|x,\<theta\>|)>=<big|sum><rsub|t=1><rsup|T>L<around*|(|x<around*|(|t|)>,t,\<theta\>|)>>.
  Next, we may suppose that there exist some symmetries about the physical
  system, such as autonomous and parity symmetry, which means
  <math|L<around*|(|x,t,\<theta\>|)>=<big|sum><rsub|n=1><rsup|+\<infty\>>\<theta\><rsub|n>
  x<rsup|2n>> when <math|x> is <math|1>-dimensional. These symmetries will
  further restrict the possible form of the action. Finally, we can write
  down a most generic form of action that satisfies all the ansatz. Neural
  network and symbolic regression may help you write down this most generic
  form. Then, we find the best fit <math|\<theta\><rsub|\<star\>>> by
  equation <reference|equation:Iteration>. The action
  <math|S<around*|(|x,\<theta\><rsub|\<star\>>|)>> describes the dynamics
  extracted from the raw data.<\footnote>
    An experiment on general oscillators can be found in the
    <samp|oscillators/Oscillator.ipynb>.
  </footnote>

  <subsection|Is There an Action for a Dynamical System?>

  Configuration can be represented by a high-dimensional vector. For example,
  in section <reference|section: Example: Extract Dynamics from Raw Data>,
  the configuration of physical system should be a function
  <math|x<around*|(|t|)>:\<bbb-R\>\<rightarrow\>V> for some set <math|V>, but
  discretized to a vector <math|<around*|(|x<around*|(|1|)>,\<ldots\>,x<around*|(|T|)>|)>\<in\>V<rsup|T>>
  where <math|T> represents the number of frames. Thus, generally, an action
  can be represented as <math|S<around*|(|x|)>:V<rsup|n>\<rightarrow\>\<bbb-R\>>.
  In the previous example, we have <math|n=T>. The variation of action is
  simply <math|\<nabla\>S<around*|(|x|)>>. On the other hand, equation of
  motion can be represented by a vector <math|F<around*|(|x|)>=0> where
  <math|F:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n-m>> where <math|m>
  represents the order of the equation of motion. In the case of
  one-dimensional harmonic oscillator, the equation of motion is second
  order, thus in the discrete situation, there are <math|T-2> constraints,
  thus <math|m=2>. The two extra degrees of freedom are assigned to the
  initial position and velocity of oscillator. If the initial conditions are
  given, we will have <math|m=0>, thus <math|F:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>.
  In this case, we expect to represent the equation of motion by the
  variation of action, that is, <math|F<rsub|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>.
  This cannot be true for all <math|F> since
  <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S<around*|(|x|)>\<equiv\>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>
  while generally <math|\<partial\><rsub|\<alpha\>>F<rsub|\<beta\>><around*|(|x|)>\<neq\>\<partial\><rsub|\<beta\>>
  F<rsub|\<alpha\>><around*|(|x|)>>. But, if <math|F<around*|(|x|)>=0> is an
  equation of motion, so will be <math|M<rsub|\<alpha\>\<beta\>><around*|(|x|)>
  F<rsup|\<beta\>><around*|(|x|)>=0> for any smooth and invertible matrix
  valued field <math|M:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n\<times\>n>>.
  So, we may expect

  <\equation*>
    M<rsub|\<alpha\>\<beta\>><around*|(|x|)>
    F<rsup|\<beta\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>S<around*|(|x|)>
  </equation*>

  holds for a general class of equation of motion <math|F> as long as we can
  find the corresponding <math|M>. We wonder, given <math|F>, if there is
  such an <math|M> and an <math|S> that this relation holds?

  <subsection|Drafts (TODO)>

  It is well known that, given a vector <math|k\<in\>\<bbb-R\><rsup|n>>, any
  vector <math|y\<in\>\<bbb-R\><rsup|n>> can be decomposed into two parts:
  one that parallel to <math|k> and the other normal to <math|k>. That is,
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
  where <math|\<sigma\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> and
  <math|\<nu\>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> with
  <math|><math|\<nabla\>\<cdot\>\<nu\><around*|(|x|)>=0>.

  \;

  This relation, if holds, implies that, for each <math|\<alpha\>> and
  <math|\<beta\>>,

  <\equation*>
    \<partial\><rsub|\<alpha\>><around*|[|M<rsub|\<beta\>\<gamma\>><around*|(|x|)>
    F<rsup|\<gamma\>><around*|(|x|)>|]>=\<partial\><rsub|\<beta\>><around*|[|M<rsub|\<alpha\>\<gamma\>><around*|(|x|)>
    F<rsup|\<gamma\>><around*|(|x|)>|]>,
  </equation*>

  since <math|\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>S<around*|(|x|)>\<equiv\>\<partial\><rsub|\<beta\>>\<partial\><rsub|\<alpha\>>S<around*|(|x|)>>.
  So, <math|\<partial\><rsub|\<alpha\>>M<rsub|\<beta\>\<gamma\>>
  F<rsup|\<gamma\>>+M<rsub|\<beta\>\<gamma\>>
  \<partial\><rsub|\<alpha\>>F<rsup|\<gamma\>>=\<partial\><rsub|\<beta\>>M<rsub|\<alpha\>\<gamma\>>
  F<rsup|\<gamma\>>+M<rsub|\<alpha\>\<gamma\>>
  \<partial\><rsub|\<beta\>>F<rsup|\<gamma\>>>. This is a little complicated.
  We first simplify the situation. The simplies case is
  <math|M<rsub|\<alpha\>\<beta\>><around*|(|x|)>=\<sigma\><around*|(|x|)>
  \<delta\><rsub|\<alpha\>\<beta\>>> where
  <math|\<sigma\><around*|(|x|)>\<gtr\>0>. Thus,

  <\equation*>
    \<partial\><rsub|\<alpha\>><around*|[|\<sigma\><around*|(|x|)>
    F<rsub|\<beta\>><around*|(|x|)>|]>=\<partial\><rsub|\<beta\>><around*|[|\<sigma\><around*|(|x|)>
    F<rsub|\<alpha\>><around*|(|x|)>|]>.
  </equation*>

  That is, <math|\<partial\><rsub|\<alpha\>>\<sigma\>
  F<rsub|\<beta\>>+\<sigma\> \<partial\><rsub|\<alpha\>>F<rsub|\<beta\>>=\<partial\><rsub|\<beta\>>\<sigma\>
  F<rsub|\<alpha\>>+\<sigma\> \<partial\><rsub|\<beta\>>
  F<rsub|\<alpha\>><around*|(|x|)>>, thus
  <math|\<partial\><rsub|\<alpha\>>F<rsub|\<beta\>>-\<partial\><rsub|\<beta\>>F<rsub|\<alpha\>>=-<around*|[|\<partial\><rsub|\<alpha\>>ln
  \<sigma\> F<rsub|\<beta\>>-\<partial\><rsub|\<beta\>>ln \<sigma\>
  F<rsub|\<alpha\>>|]>>. Decomposing <math|\<partial\><rsub|\<alpha\>>
  F<rsub|\<beta\>>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\>+\<partial\><rsub|\<alpha\>>\<nu\><rsub|\<beta\>>>
  gives <math|><math|\<partial\><rsub|\<alpha\>>\<nu\><rsub|\<beta\>>-\<partial\><rsub|\<beta\>>\<nu\><rsub|\<alpha\>>=-<around*|[|\<partial\><rsub|\<alpha\>>ln
  \<sigma\> F<rsub|\<beta\>>-\<partial\><rsub|\<beta\>>ln \<sigma\>
  F<rsub|\<alpha\>>|]>>

  \;

  \;

  Consider the case where <math|M> is diagonal, where
  <math|M<rsub|\<alpha\>\<beta\>>=\<delta\><rsub|\<alpha\>\<beta\>>
  \<lambda\><rsub|\<alpha\>><around*|(|x|)>>. Thus, it becomes, for each
  <math|\<alpha\>> and <math|\<beta\>>,

  <\equation*>
    \<partial\><rsub|\<alpha\>><around*|[|\<lambda\><rsub|\<beta\>><around*|(|x|)>
    F<rsub|\<beta\>><around*|(|x|)>|]>=\<partial\><rsub|\<beta\>><around*|[|\<lambda\><rsub|\<alpha\>><around*|(|x|)>
    F<rsub|\<alpha\>><around*|(|x|)>|]>,
  </equation*>

  or

  <\equation*>
    \<partial\><rsub|\<alpha\>>\<lambda\><rsub|\<beta\>>
    F<rsub|\<beta\>>+\<lambda\><rsub|\<beta\>>
    \<partial\><rsub|\<alpha\>>F<rsub|\<beta\>>=\<partial\><rsub|\<beta\>>\<lambda\><rsub|\<alpha\>>
    F<rsub|\<alpha\>>+\<lambda\><rsub|\<alpha\>>
    \<partial\><rsub|\<beta\>>F<rsub|\<alpha\>>.
  </equation*>

  Then, decompose <math|F> as <math|F<rsub|\<alpha\>><around*|(|x|)>=\<partial\><rsub|\<alpha\>>\<varphi\><around*|(|x|)>+\<nu\><rsub|\<alpha\>><around*|(|x|)>>
  with <math|\<partial\><rsub|\<alpha\>>\<nu\><rsup|\<alpha\>><around*|(|x|)>=0>.
  Thus, <math|\<partial\><rsub|\<alpha\>>
  F<rsub|\<beta\>>=\<partial\><rsub|\<alpha\>>\<partial\><rsub|\<beta\>>\<varphi\>+\<partial\><rsub|\<alpha\>>\<nu\><rsub|\<beta\>>>.

  <subsection|Maximum-Entropy and Least-Action Are Saddle Point of a
  Functional>

  In fact, equations (<reference|equation:Generic Density>),
  (<reference|equation:Partition Function>), and
  (<reference|equation:Restriction>) can be regarded as an extremum of the
  functional (recall that <math|<wide|P|^>> is the distribution of prior
  knowledge and <math|Q> of dataset)

  <\equation*>
    V<around*|(|p,\<theta\>,\<mu\>|)>\<assign\>H<around*|[|P,<wide|P|^>|]>+<around*|(|\<bbb-E\><rsub|P><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>-\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>|)>+\<mu\><around*|(|\<bbb-E\><rsub|P><around*|[|1|]>-1|)>,
  </equation*>

  or explicitly

  <\equation>
    V<around*|(|p,\<theta\>,\<mu\>|)>=<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>ln<frac|p<around*|(|x|)>|<wide|p|^><around*|(|x|)>>+<around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>S<around*|(|x,\<theta\>|)>-<big|int><rsub|\<cal-X\>>\<mathd\>x
    q<around*|(|x|)>S<around*|(|x,\<theta\>|)>|)>+\<mu\><around*|(|<big|int><rsub|\<cal-X\>>\<mathd\>x
    p<around*|(|x|)>-1|)>.<label|equation:functional V>
  </equation>

  Indeed, variance on <math|p> gives equation (<reference|equation:Generic
  Density>).<\footnote>
    Explicitly, we have

    <\equation*>
      <frac|\<delta\>V|\<delta\>p<around*|(|x|)>><around*|(|p,\<theta\>,\<mu\>|)>=ln
      p<around*|(|x|)>+1-ln <wide|p|^><around*|(|x|)>+S<around*|(|x,\<theta\>|)>+\<mu\>=0,
    </equation*>

    which has solution

    <\equation*>
      p<around*|(|x|)>\<propto\><wide|p|^><around*|(|x|)>
      exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>.
    </equation*>
  </footnote> Together with the partial derivative on <math|\<mu\>>, we get
  equation (<reference|equation:Partition Function>). Finally, partial
  derivative on <math|\<theta\>> directly gives equation
  (<reference|equation:Restriction>). Interestingly, the second term is just
  the <math|-L<rsub|LA><around*|(|\<theta\>|)>> in equation
  (<reference|equation:Equivalent Loss>). So, the extremum is in fact a
  saddle point, as

  <\equation>
    <around*|(|p<rsub|\<star\>>,\<theta\><rsub|\<star\>>,\<mu\><rsub|\<star\>>|)>=min<rsub|p,\<mu\>>
    max<rsub|\<theta\>>V<around*|(|p,\<theta\>,\<mu\>|)>.<label|equation:V
    extremum>
  </equation>

  \;

  By tuning <math|p>, the <math|min<rsub|p,\<mu\>>> minimizes the relative
  entropy between <math|P> and <math|Q> and the expectation of action
  <math|\<bbb-E\><rsub|P><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>,
  which in turn relates the density function <math|p> with the action
  <math|S<around*|(|\<cdummy\>,\<theta\>|)>>. And by tuning <math|\<theta\>>,
  the <math|max<rsub|\<theta\>>> sites real data onto the action's local
  minima. So, we find that maximum-entropy principle and least-action
  principle are saddle point of a functional <math|V>.

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
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1|2>>
    <associate|auto-5|<tuple|1.3|2>>
    <associate|auto-6|<tuple|1.4|3>>
    <associate|auto-7|<tuple|1.5|3>>
    <associate|auto-8|<tuple|1.6|4>>
    <associate|auto-9|<tuple|1.7|4>>
    <associate|equation:Equivalent Loss|<tuple|5|2>>
    <associate|equation:Generic Density|<tuple|1|1>>
    <associate|equation:Iteration|<tuple|3|1>>
    <associate|equation:Partition Function|<tuple|2|1>>
    <associate|equation:Restriction|<tuple|4|1>>
    <associate|equation:V extremum|<tuple|7|4>>
    <associate|equation:functional V|<tuple|6|4>>
    <associate|figure: Least-Action|<tuple|1|2>>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|3>>
    <associate|footnote-3|<tuple|3|3>>
    <associate|footnote-4|<tuple|4|4>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|3>>
    <associate|footnr-3|<tuple|3|3>>
    <associate|footnr-4|<tuple|4|4>>
    <associate|section: Data Fitting Is Equivalent to Least-Action
    Principle|<tuple|1.2|1>>
    <associate|section: Example: Extract Dynamics from Raw
    Data|<tuple|1.3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>|| This figure
      illustrate how <with|mode|<quote|math>|min<rsub|\<theta\>>L<rsub|LA><around*|(|\<theta\>|)>>
      will site a real world datum onto a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The green
      curve represents the current not-yet-optimized
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>. The
      <with|mode|<quote|math>|x<rsub|1>> (red point) is a real world datum
      while <with|mode|<quote|math>|x<rsub|2>> (blue point), which is
      currently a local minimum of <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>>,
      is not. Minimizing <with|mode|<quote|math>|L<rsub|LA>> by tuning
      <with|mode|<quote|math>|\<theta\>> pushes the
      <with|mode|<quote|math>|\<bbb-E\><rsub|Q><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      down to lower value, corresponding to the red downward double-arrow on
      <with|mode|<quote|math>|x<rsub|1>>. Also, since
      <with|mode|<quote|math>|x<rsub|2>> is a local minimum, the data points
      sampled from <with|mode|<quote|math>|p<around*|(|x,\<theta\>|)>\<propto\>exp<around*|(|-S<around*|(|x,\<theta\>|)>|)>>
      will accumulate around <with|mode|<quote|math>|x<rsub|2>>. So,
      minimizing <with|mode|<quote|math>|L<rsub|LA>> also pulls the
      <with|mode|<quote|math>|\<bbb-E\><rsub|P<around*|(|\<theta\>|)>><around*|[|S<around*|(|\<cdummy\>,\<theta\>|)>|]>>
      up to greater value, corresponding to the blue upward double-arrow on
      <with|mode|<quote|math>|x<rsub|2>>. Altogether, it makes
      <with|mode|<quote|math>|x<rsub|1>> a local minimum of
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> and
      <with|mode|<quote|math>|S<around*|(|\<cdummy\>,\<theta\>|)>> is
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

      <with|par-left|<quote|1tab>|1.5<space|2spc>Example: Actions in Machine
      Learning (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Maximum-Entropy and
      Least-Action Are Saddle Point of a Functional
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.7<space|2spc>Structures in Nature Arise
      from Maximum-Entropy (TODO) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>